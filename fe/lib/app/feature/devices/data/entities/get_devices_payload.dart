import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ntt_device_models/ntt_device_models.dart';

part 'get_devices_payload.g.dart';

part 'get_devices_payload.freezed.dart';

@freezed
class GetDevicesPayload with _$GetDevicesPayload {
  factory GetDevicesPayload({
    @Default([]) @JsonKey(name: 'list') List<DeviceDto> devices,
  }) = _GetDevicesPayload;

  factory GetDevicesPayload.fromJson(Map<String, dynamic> json) =>
      _$GetDevicesPayloadFromJson(json);
}
