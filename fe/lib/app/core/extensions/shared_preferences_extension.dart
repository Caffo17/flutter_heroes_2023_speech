// ignore_for_file: avoid_positional_boolean_parameters

import 'package:shared_preferences/shared_preferences.dart';

import '../resources/constants.dart';

extension SharedPreferencesExt on SharedPreferences {
  bool get rememberMe => getBool(Constants.rememberMeKey) ?? false;

  void setRememberMe(bool v) => setBool(Constants.rememberMeKey, v);

  String? get username => getString(Constants.usernameKey);

  void setUsername(String v) => setString(Constants.usernameKey, v);

  void removeUsername() => remove(Constants.usernameKey);
}
