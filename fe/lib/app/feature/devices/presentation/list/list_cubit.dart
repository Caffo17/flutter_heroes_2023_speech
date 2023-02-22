// ignore_for_file: inference_failure_on_function_invocation

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ntt_cubit_arch/ntt_cubit_arch.dart';

import '../../../../core/router/app_navigator.dart';
import '../../../../utils/dialogs.dart';
import '../../../../utils/session_manager.dart';
import '../../data/api/devices_api.dart';
import '../../domain/model/device.dart';
import '../detail/detail_cubit.dart';
import 'list_state.dart';

class DeviceListCubit extends NttCubit<DeviceListState> {
  DeviceListCubit(
    NttNavigator navigator,
    this.devicesRepository,
  ) : super(
          LoadingDeviceListState(),
          navigator,
        );

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final DevicesApi devicesRepository;

  Future<void> logout() async {
    final bool? v = await showLogoutDialog();

    if (v != null && v) {
      unawaited(AppNavigator().popAndPushNamed(AppRoutes.login));
      SessionManager().reset();
    }
  }

  void onFilterTap() {
    scaffoldKey.currentState?.openDrawer();
  }

  Future<void> onAddTap() async {
    final bool? v = await AppNavigator().pushNamed<bool?>(
      AppRoutes.deviceForm,
    );

    if (v != null && v) {
      unawaited(fetchDevices());
    }
  }

  void onFiltersChanged(Map<String, dynamic> newFilters) {
    AppNavigator().pop();

    if (state.filters != newFilters) {
      emit(state.copyWith(filters: newFilters));
      fetchDevices();
    }
  }

  Future<void> onDeviceTap(Device device) async {
    final bool? v = await AppNavigator().pushNamed<bool?>(
      AppRoutes.deviceDetail,
      DeviceDetailsParams(deviceId: device.udid, deviceName: device.name),
    );

    if (v != null && v) {
      unawaited(fetchDevices());
    }
  }

  Future<void> fetchDevices() async {
    if (state is! LoadingDeviceListState) {
      emit(LoadingDeviceListState(filters: state.filters));
    }

    final res = await devicesRepository.getDeviceList(
      status: state.filters['status'],
      office: state.filters['office'],
    );

    res.fold(
      (l) {
        hideLoader();
        emit(ErrorDeviceListState(filters: state.filters));
      },
      (r) {
        hideLoader();

        emit(DeviceListState(filters: state.filters, devicesMap: r));
      },
    );
  }
}
