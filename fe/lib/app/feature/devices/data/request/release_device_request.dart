import 'package:ntt_cubit_arch/ntt_cubit_arch.dart';

import '../../../../core/data/model/api_response.dart';
import '../../../../core/resources/constants.dart';

class ReleaseDeviceRequest extends NttRequest {
  ReleaseDeviceRequest(String udid)
      : super(
          baseUrl: Constants.baseUrl,
          endPoint: 'devices/$udid/release',
          method: HttpMethod.post,
          responseDecoder: (json) => ApiResponse.fromJson(
            json,
            (_) => null,
          ),
        );
}
