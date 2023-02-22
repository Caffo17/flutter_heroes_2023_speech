import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/model/device.dart';

part 'detail_state.freezed.dart';

@freezed
class DeviceDetailState with _$DeviceDetailState {
  factory DeviceDetailState.loading({
    required String deviceId,
    required String deviceName,
  }) = LoadingDeviceDetailState;

  factory DeviceDetailState.loaded({
    required String deviceId,
    required String deviceName,
    required Device device,
  }) = LoadedDeviceDetailState;
}
