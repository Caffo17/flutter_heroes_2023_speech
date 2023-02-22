import 'package:ntt_cubit_arch/ntt_cubit_arch.dart';
import 'package:ntt_device_models/ntt_device_models.dart';

import '../../../../core/data/model/api_response.dart';
import '../../../../core/resources/constants.dart';
import '../entities/get_devices_payload.dart';

class GetDevicesRequest extends NttRequest {
  GetDevicesRequest({
    this.status,
    this.office,
  }) : super(
          baseUrl: Constants.baseUrl,
          endPoint: 'devices',
          method: HttpMethod.get,
          responseDecoder: (json) => ApiResponse.fromJson(
            json,
            GetDevicesPayload.fromJson,
          ),
        );

  final Office? office;
  final DeviceStatus? status;

  @override
  Map<String, dynamic> get queryParameters => {
        'office': office?.name,
        'status': status?.name,
      }..removeWhere(
          (key, value) => value == null,
        );
}
