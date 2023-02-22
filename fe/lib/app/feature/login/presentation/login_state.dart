import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState({
    @Default('') String username,
    @Default('') String psw,
    String? error,
    @Default(false) bool showPassword,
    @Default(false) bool rememberMe,
    @Default(false) bool isLoading,
  }) = _LoginState;
}
