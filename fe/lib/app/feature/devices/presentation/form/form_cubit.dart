// ignore_for_file: strict_raw_type

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ntt_cubit_arch/ntt_cubit_arch.dart';
import 'package:ntt_device_models/ntt_device_models.dart';

import '../../../../core/data/model/api_response.dart';
import '../../../../core/data/model/app_error.dart';
import '../../../../core/router/app_navigator.dart';
import '../../data/api/devices_api.dart';
import '../../domain/model/device.dart';
import 'form_state.dart';

class DeviceFormCubit extends NttCubit<DeviceFormState> {
  DeviceFormCubit(
    NttNavigator navigator,
    this.devicesRepository, {
    this.device,
  }) : super(
          device != null ? DeviceFormState.edit(device: device) : DeviceFormState.create(),
          navigator,
        ) {
    formKey = GlobalKey<FormState>();
    imeiTEC =
        TextEditingController(text: state.map(create: (v) => v.udid, edit: (v) => v.device.udid))
          ..addListener(() {
            emit(
              state.map(
                create: (v) => v.copyWith(udid: imeiTEC.text),
                edit: (v) => v.copyWith.device(udid: imeiTEC.text),
              ),
            );
          });
    modelTEC =
        TextEditingController(text: state.map(create: (v) => v.name, edit: (v) => v.device.name))
          ..addListener(() {
            emit(
              state.map(
                create: (v) => v.copyWith(name: modelTEC.text),
                edit: (v) => v.copyWith.device(name: modelTEC.text),
              ),
            );
          });
    osVersionTEC = TextEditingController(
      text: state.map(create: (v) => v.osVersion, edit: (v) => v.device.osVersion),
    )..addListener(() {
        emit(
          state.map(
            create: (v) => v.copyWith(osVersion: osVersionTEC.text),
            edit: (v) => v.copyWith.device(osVersion: osVersionTEC.text),
          ),
        );
      });
    pinTEC = TextEditingController(text: state.map(create: (v) => v.pin, edit: (v) => v.device.pin))
      ..addListener(() {
        emit(
          state.map(
            create: (v) => v.copyWith(pin: pinTEC.text),
            edit: (v) => v.copyWith.device(pin: pinTEC.text),
          ),
        );
      });
    accountEmailTEC = TextEditingController(
      text: state.map(create: (v) => v.accountEmail, edit: (v) => v.device.accountEmail),
    )..addListener(() {
        emit(
          state.map(
            create: (v) => v.copyWith(accountEmail: accountEmailTEC.text),
            edit: (v) => v.copyWith.device(accountEmail: accountEmailTEC.text),
          ),
        );
      });
    accountPswTEC = TextEditingController(
      text: state.map(create: (v) => v.accountPassword, edit: (v) => v.device.accountPassword),
    )..addListener(() {
        emit(
          state.map(
            create: (v) => v.copyWith(accountPassword: accountPswTEC.text),
            edit: (v) => v.copyWith.device(accountPassword: accountPswTEC.text),
          ),
        );
      });
    imeiFN = FocusNode();
    modelFN = FocusNode();
    osVersionFN = FocusNode();
    pinFN = FocusNode();
    accountEmailFN = FocusNode();
    accountPswFN = FocusNode();
  }

  final DevicesApi devicesRepository;
  final Device? device;
  late GlobalKey<FormState> formKey;
  late TextEditingController imeiTEC,
      modelTEC,
      osVersionTEC,
      pinTEC,
      accountEmailTEC,
      accountPswTEC;
  late FocusNode imeiFN, modelFN, osVersionFN, pinFN, accountEmailFN, accountPswFN;

  void onOsChanged(Os? v) => emit(
        state.map(
          create: (state) => state.copyWith(osType: v),
          edit: (state) => state.copyWith.device(osType: v ?? state.device.osType),
        ),
      );

  void onLocationChanged(Office? v) => emit(
        state.map(
          create: (state) => state.copyWith(location: v),
          edit: (state) => state.copyWith.device(location: v ?? state.device.location),
        ),
      );

  String? osValidator(Os? v) {
    return v != null ? null : 'Missing OS';
  }

  String? locationValidator(Office? v) {
    return v != null ? null : 'Missing location';
  }

  String? imeiValidator(String? s) {
    return (s?.length ?? 0) != 15 ? 'Must be 15 digits' : null;
  }

  String? modelValidator(String? s) {
    return s != null && s.isNotEmpty ? null : 'Missing model';
  }

  String? osVersionValidator(String? s) {
    return s != null && s.isNotEmpty ? null : 'Missing OS version';
  }

  String? pinValidator(String? s) {
    return s != null && s.isNotEmpty && s.length < 4 ? 'Pin must be at least 4 digits' : null;
  }

  String? accountEmailValidator(String? s) {
    return s != null && s.isEmpty ? 'Email not valid' : null;
  }

  String? accountPswValidator(String? s) {
    final accountEmail = state.map(
      create: (v) => v.accountEmail,
      edit: (v) => v.device.accountEmail,
    );

    return accountEmail != null && accountEmail.isNotEmpty && !(s != null || s!.isNotEmpty)
        ? 'Missing account password'
        : null;
  }

  Future<void> onSaveTap() async {
    final bool? isFormValid = formKey.currentState?.validate();

    if (isFormValid ?? false) {
      showLoader();

      late Either<AppError, Response<ApiResponse>> res;

      if (state is CreateDeviceFormState) {
        final s = state as CreateDeviceFormState;

        res = await devicesRepository.createDevice(
          device: Device(
            udid: s.udid!,
            name: s.name!,
            accountEmail: s.accountEmail!,
            accountPassword: s.accountPassword!,
            osVersion: s.osVersion!,
            status: DeviceStatus.available,
            location: s.location!,
            osType: s.osType!,
            pin: s.pin,
          ),
        );
      } else {
        res = await devicesRepository.updateDevice(
          device: (state as EditDeviceFormState).device,
        );
      }

      res.fold(
        (l) {
          hideLoader();
        },
        (r) {
          hideLoader();
          AppNavigator().pop(true);
        },
      );
    }
  }
}
