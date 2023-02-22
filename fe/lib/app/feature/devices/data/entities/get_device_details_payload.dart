import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ntt_device_models/ntt_device_models.dart';

part 'get_device_details_payload.freezed.dart';

part 'get_device_details_payload.g.dart';

@freezed
class GetDeviceDetailsPayload with _$GetDeviceDetailsPayload {
  factory GetDeviceDetailsPayload({
    required DeviceDto device,
  }) = _GetDeviceDetailsPayload;

  factory GetDeviceDetailsPayload.fromJson(Map<String, dynamic> json) =>
      _$GetDeviceDetailsPayloadFromJson(json);
}
