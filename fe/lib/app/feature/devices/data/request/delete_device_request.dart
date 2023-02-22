import 'package:ntt_cubit_arch/ntt_cubit_arch.dart';

import '../../../../core/data/model/api_response.dart';
import '../../../../core/resources/constants.dart';

class DeleteDeviceRequest extends NttRequest {
  DeleteDeviceRequest(String udid)
      : super(
          baseUrl: Constants.baseUrl,
          endPoint: 'devices/$udid',
          method: HttpMethod.delete,
          responseDecoder: (json) => ApiResponse.fromJson(
            json,
            (_) => null,
          ),
        );
}
