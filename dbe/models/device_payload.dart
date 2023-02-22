import 'package:ntt_device_models/ntt_device_models.dart';

import 'dbe_payload.dart';

class DevicePayload extends DbePayload {
  final DeviceDto device;

  const DevicePayload(this.device);

  @override
  Map<String, dynamic> toJson() {
    return {
      'device': device.toJson(),
    };
  }
}
