import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();

  factory User.logged({
    required int userId,
    required String role,
    required String email,
  }) = LoggedUser;

  factory User.notLogged() = NotLoggedUser;
}
