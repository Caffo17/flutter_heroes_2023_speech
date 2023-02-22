import 'package:flutter/material.dart';
import 'package:ntt_cubit_arch/ntt_cubit_arch.dart';
import 'package:ntt_device_models/ntt_device_models.dart';
import '../../../../core/router/app_navigator.dart';
import '../../../../utils/dialogs.dart';
import '../../data/api/devices_api.dart';
import '../history/history_screen.dart';
import 'detail_state.dart';

class DeviceDetailsParams {
  const DeviceDetailsParams({
    required this.deviceId,
    required this.deviceName,
  });

  final String deviceId;
  final String deviceName;
}

class DeviceDetailCubit extends NttCubit<DeviceDetailState> {
  DeviceDetailCubit(
    NttNavigator navigator,
    this.devicesRepository, {
    required DeviceDetailsParams params,
  }) : super(
          DeviceDetailState.loading(
            deviceId: params.deviceId,
            deviceName: params.deviceName,
          ),
          navigator,
        );

  final DevicesApi devicesRepository;

  Future<void> onInit() async {
    final res = await devicesRepository.getDeviceDetails(udid: state.deviceId);

    res.fold(
      (l) => null,
      (r) {
        emit(
          LoadedDeviceDetailState(
            deviceId: state.deviceId,
            deviceName: state.deviceName,
            device: r,
          ),
        );
      },
    );
  }

  void goToHistory() {
    if (state is LoadedDeviceDetailState) {
      final s = state as LoadedDeviceDetailState;

      navigator.pushNamed<void>(
        AppRoutes.deviceHistory,
        DeviceHistoryParams(device: s.device),
      );
    }
  }

  Future<void> onEditTap() async {
    if (state is LoadedDeviceDetailState) {
      final LoadedDeviceDetailState s = state as LoadedDeviceDetailState;

      final bool? v = await AppNavigator().pushNamed<bool?>(
        AppRoutes.deviceForm,
        s.device,
      );

      if (v != null && v) {
        AppNavigator().pop(v);
      }
    }
  }

  Future<void> onDeleteTap() async {
    if (state is LoadedDeviceDetailState) {
      final LoadedDeviceDetailState s = state as LoadedDeviceDetailState;
      final bool? v = await showDeleteDialog(
        name: s.device.name,
      );

      if (v != null && v) {
        showLoader();

        final res = await devicesRepository.deleteDevice(udid: s.device.udid);

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

  Future<void> onCrashTap() async {
    if (state is LoadedDeviceDetailState) {
      final LoadedDeviceDetailState s = state as LoadedDeviceDetailState;
      final bool? v = await showIncidentDialog(
        name: s.device.name,
      );

      if (v != null && v) {
        showLoader();

        final res = await devicesRepository.changeDeviceStatus(
          device: s.device,
          newStatus: DeviceStatus.notAvailable,
        );

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

  Future<void> onRepairTap() async {
    if (state is LoadedDeviceDetailState) {
      final LoadedDeviceDetailState s = state as LoadedDeviceDetailState;
      final bool? v = await showRepairDialog(
        name: s.device.name,
      );

      if (v != null && v) {
        showLoader();

        final res = await devicesRepository.changeDeviceStatus(
          device: s.device,
          newStatus: DeviceStatus.available,
        );

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

  VoidCallback? get onDeviceButtonTap {
    if (state is LoadedDeviceDetailState) {
      final LoadedDeviceDetailState s = state as LoadedDeviceDetailState;

      if (s.device.status == DeviceStatus.available) return _reserveDevice;
      if (s.device.status == DeviceStatus.owned) return _releaseDevice;

      return null;
    } else {
      return null;
    }
  }

  Future<void> _reserveDevice() async {
    if (state is LoadedDeviceDetailState) {
      final LoadedDeviceDetailState s = state as LoadedDeviceDetailState;

      showLoader();

      final res = await devicesRepository.reserveDevice(udid: s.device.udid);

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

  // ignore: unused_element
  Future<void> _releaseDevice() async {
    if (state is LoadedDeviceDetailState) {
      final LoadedDeviceDetailState s = state as LoadedDeviceDetailState;
      showLoader();

      final res = await devicesRepository.releaseDevice(udid: s.device.udid);

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
