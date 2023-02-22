import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'user_session.freezed.dart';

@freezed
class UserSession with _$UserSession {
  const UserSession._();

  factory UserSession.alive({
    required LoggedUser user,
    required String token,
  }) = AliveUserSession;

  factory UserSession.notAlive() = NotAliveUserSession;
}
