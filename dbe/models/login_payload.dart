import 'package:users_data_source/users_data_source.dart';

import 'dbe_payload.dart';

class LoginPayload extends DbePayload {
  final UserDto user;
  final String jwt;

  const LoginPayload({
    required this.user,
    required this.jwt,
  });

  Map<String, dynamic> toJson() {
    return {
      'user': this.user,
      'token': this.jwt,
    };
  }
}
