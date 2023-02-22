import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ntt_device_models/ntt_device_models.dart';
import '../../domain/model/device.dart';

part 'form_state.freezed.dart';

@unfreezed
class DeviceFormState with _$DeviceFormState {
  factory DeviceFormState.create({
    String? udid,
    String? name,
    String? accountEmail,
    String? accountPassword,
    String? osVersion,
    Office? location,
    Os? osType,
    String? pin,
  }) = CreateDeviceFormState;

  factory DeviceFormState.edit({required Device device}) = EditDeviceFormState;
}
