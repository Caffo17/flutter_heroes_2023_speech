import 'package:ntt_cubit_arch/ntt_cubit_arch.dart';
import 'package:ntt_device_models/ntt_device_models.dart';

import '../../../../core/data/model/api_response.dart';
import '../../../../core/resources/constants.dart';

class CreateDeviceRequest extends NttRequest {
  CreateDeviceRequest({required this.device})
      : super(
          baseUrl: Constants.baseUrl,
          endPoint: 'devices',
          method: HttpMethod.post,
          responseDecoder: (json) => ApiResponse.fromJson(
            json,
            (_) => null,
          ),
        );

  final DeviceDto device;

  @override
  Map<String, dynamic> get body => {
        'udid': device.udid,
        'name': device.name,
        'status': DeviceStatus.available.name,
        'office': device.office.name,
        'accountEmail': device.accountEmail,
        'accountPassword': device.accountPassword,
        'pin': device.pin,
        'os': device.os.name,
        'osVersion': device.osVersion,
      };
}
