import 'package:ntt_cubit_arch/ntt_cubit_arch.dart';

import '../../../../core/data/model/api_response.dart';
import '../../../../core/resources/constants.dart';
import '../entities/get_device_details_payload.dart';

class GetDeviceDetailsRequest extends NttRequest {
  GetDeviceDetailsRequest(String udid)
      : super(
          baseUrl: Constants.baseUrl,
          endPoint: 'devices/$udid',
          method: HttpMethod.get,
          responseDecoder: (json) => ApiResponse.fromJson(
            json,
            GetDeviceDetailsPayload.fromJson,
          ),
        );
}
