// ignore_for_file: use_setters_to_change_properties

import '../feature/login/domain/model/user.dart';
import '../feature/login/domain/model/user_session.dart';

class SessionManager {
  factory SessionManager() => _instance;

  SessionManager._() : _session = UserSession.notAlive();

  UserSession _session;

  static final SessionManager _instance = SessionManager._();

  User? get user => _session.map(
        alive: (v) => v.user,
        notAlive: (_) => null,
      );

  int? get userId => _session.map(
        alive: (v) => v.user.userId,
        notAlive: (_) => null,
      );

  String? get token => _session.map(
        alive: (v) => v.token,
        notAlive: (_) => null,
      );

  bool get isAdmin => _session.map(
        alive: (v) => v.user.role == 'admin',
        notAlive: (_) => false,
      );

  bool get isAlive => _session is AliveUserSession;

  void setup(UserSession v) {
    _session = v;
  }

  void reset() {
    _session = UserSession.notAlive();
  }
}
