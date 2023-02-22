import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_dto.dart';

part 'login_payload.g.dart';

part 'login_payload.freezed.dart';

@freezed
class LoginPayload with _$LoginPayload {
  factory LoginPayload({
    required UserDto user,
    required String token,
  }) = _LoginPayload;

  factory LoginPayload.fromJson(Map<String, dynamic> json) => _$LoginPayloadFromJson(json);
}
