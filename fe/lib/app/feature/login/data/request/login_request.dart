import 'package:ntt_cubit_arch/ntt_cubit_arch.dart';

import '../../../../core/data/model/api_response.dart';
import '../../../../core/resources/constants.dart';
import '../entities/login_payload.dart';

class LoginRequest extends NttRequest {
  LoginRequest({
    required this.username,
    required this.psw,
  }) : super(
          baseUrl: Constants.baseUrl,
          endPoint: 'login',
          method: HttpMethod.post,
          responseDecoder: (json) => ApiResponse.fromJson(
            json,
            LoginPayload.fromJson,
          ),
        );

  final String username;
  final String psw;

  @override
  Map<String, dynamic> get body => {
        'username': username,
        'password': psw,
      };
}
