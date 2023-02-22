import 'package:ntt_device_models/ntt_device_models.dart';

import 'dbe_payload.dart';

class GetDevicesPayload extends DbePayload {
  final List<DeviceDto> list;

  const GetDevicesPayload(this.list);

  @override
  Map<String, dynamic> toJson() {
    return {
      'list': this.list.map((e) => e.toJson()).toList(),
    };
  }
}
