import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ntt_device_models/ntt_device_models.dart';
import '../../domain/model/device.dart';

part 'list_state.freezed.dart';

@freezed
class DeviceListState with _$DeviceListState {
  factory DeviceListState({
    @Default(<Os, List<Device>>{}) Map<Os, List<Device>> devicesMap,
    @Default(<String, dynamic>{}) Map<String, dynamic> filters,
  }) = FullDeviceListState;

  factory DeviceListState.loading({
    @Default(<String, dynamic>{}) Map<String, dynamic> filters,
  }) = LoadingDeviceListState;

  factory DeviceListState.error({
    @Default(<String, dynamic>{}) Map<String, dynamic> filters,
  }) = ErrorDeviceListState;
}
