// ignore_for_file: inference_failure_on_function_invocation

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:ntt_cubit_arch/ntt_cubit_arch.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/extensions/shared_preferences_extension.dart';
import '../../../core/router/app_navigator.dart';
import '../../../utils/session_manager.dart';
import '../data/api/login_api.dart';
import 'login_state.dart';

class LoginCubit extends NttCubit<LoginState> {
  LoginCubit(
    AppNavigator navigator,
    this.loginRepository,
    this.sharedPreferences,
  ) : super(LoginState(), navigator) {
    String username = '';
    final bool rememberMe = sharedPreferences.rememberMe;

    if (rememberMe) {
      username = sharedPreferences.username ?? '';
    }

    usernameTEC = TextEditingController(text: username)
      ..addListener(() {
        _onUsernameChange(usernameTEC.text);
      });
    pswTEC = TextEditingController()
      ..addListener(() {
        _onPswChange(pswTEC.text);
      });
    usernameFN = FocusNode();
    pswFN = FocusNode();
    formKey = GlobalKey<FormState>();

    emit(
      state.copyWith(
        username: username,
        rememberMe: rememberMe,
      ),
    );
  }

  final LoginApi loginRepository;
  final SharedPreferences sharedPreferences;

  late TextEditingController usernameTEC;
  late TextEditingController pswTEC;
  late FocusNode usernameFN;
  late FocusNode pswFN;
  late GlobalKey<FormState> formKey;

  void _onUsernameChange(String? username) => emit(
        state.copyWith(username: username ?? state.username),
      );

  void _onPswChange(String? psw) => emit(state.copyWith(psw: psw ?? state.psw));

  void onErrorShown() => emit(state.copyWith(error: null));

  void onRememberMeChange() => emit(state.copyWith(rememberMe: !state.rememberMe));

  void onShowPasswordChange() => emit(state.copyWith(showPassword: !state.showPassword));

  void clearFocusView() {
    if (usernameFN.hasFocus) usernameFN.unfocus();
    if (pswFN.hasFocus) pswFN.unfocus();
  }

  Future<void> onLogin() async {
    if (!state.isLoading && formKey.currentState!.validate()) {
      emit(state.copyWith(isLoading: true, error: null));

      final res = await loginRepository.authenticate(state.username, state.psw);

      res.fold(
        (l) {
          emit(state.copyWith(error: l.response?.statusMessage, isLoading: false));
        },
        (r) {
          r.map(
            alive: (v) {
              sharedPreferences.setRememberMe(state.rememberMe);
              if (state.rememberMe) {
                sharedPreferences.setUsername(state.username);
              } else {
                sharedPreferences.removeUsername();
              }
              SessionManager().setup(v);
              AppNavigator().pushAndReplaceNamed(AppRoutes.deviceList);
            },
            notAlive: (_) {
              emit(
                state.copyWith(
                  error: 'We are not able to complete the login. Please try again later',
                  isLoading: false,
                ),
              );
            },
          );
        },
      );
    }
  }

  @override
  Future<void> close() {
    usernameTEC.dispose();
    pswTEC.dispose();
    usernameFN.dispose();
    pswFN.dispose();
    return super.close();
  }
}
