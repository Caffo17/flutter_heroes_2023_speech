// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$User {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId, String role, String email) logged,
    required TResult Function() notLogged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId, String role, String email)? logged,
    TResult? Function()? notLogged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId, String role, String email)? logged,
    TResult Function()? notLogged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedUser value) logged,
    required TResult Function(NotLoggedUser value) notLogged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedUser value)? logged,
    TResult? Function(NotLoggedUser value)? notLogged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedUser value)? logged,
    TResult Function(NotLoggedUser value)? notLogged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoggedUserCopyWith<$Res> {
  factory _$$LoggedUserCopyWith(
          _$LoggedUser value, $Res Function(_$LoggedUser) then) =
      __$$LoggedUserCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId, String role, String email});
}

/// @nodoc
class __$$LoggedUserCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$LoggedUser>
    implements _$$LoggedUserCopyWith<$Res> {
  __$$LoggedUserCopyWithImpl(
      _$LoggedUser _value, $Res Function(_$LoggedUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? role = null,
    Object? email = null,
  }) {
    return _then(_$LoggedUser(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoggedUser extends LoggedUser {
  _$LoggedUser({required this.userId, required this.role, required this.email})
      : super._();

  @override
  final int userId;
  @override
  final String role;
  @override
  final String email;

  @override
  String toString() {
    return 'User.logged(userId: $userId, role: $role, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedUser &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, role, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedUserCopyWith<_$LoggedUser> get copyWith =>
      __$$LoggedUserCopyWithImpl<_$LoggedUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId, String role, String email) logged,
    required TResult Function() notLogged,
  }) {
    return logged(userId, role, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId, String role, String email)? logged,
    TResult? Function()? notLogged,
  }) {
    return logged?.call(userId, role, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId, String role, String email)? logged,
    TResult Function()? notLogged,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(userId, role, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedUser value) logged,
    required TResult Function(NotLoggedUser value) notLogged,
  }) {
    return logged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedUser value)? logged,
    TResult? Function(NotLoggedUser value)? notLogged,
  }) {
    return logged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedUser value)? logged,
    TResult Function(NotLoggedUser value)? notLogged,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(this);
    }
    return orElse();
  }
}

abstract class LoggedUser extends User {
  factory LoggedUser(
      {required final int userId,
      required final String role,
      required final String email}) = _$LoggedUser;
  LoggedUser._() : super._();

  int get userId;
  String get role;
  String get email;
  @JsonKey(ignore: true)
  _$$LoggedUserCopyWith<_$LoggedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotLoggedUserCopyWith<$Res> {
  factory _$$NotLoggedUserCopyWith(
          _$NotLoggedUser value, $Res Function(_$NotLoggedUser) then) =
      __$$NotLoggedUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotLoggedUserCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$NotLoggedUser>
    implements _$$NotLoggedUserCopyWith<$Res> {
  __$$NotLoggedUserCopyWithImpl(
      _$NotLoggedUser _value, $Res Function(_$NotLoggedUser) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotLoggedUser extends NotLoggedUser {
  _$NotLoggedUser() : super._();

  @override
  String toString() {
    return 'User.notLogged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotLoggedUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId, String role, String email) logged,
    required TResult Function() notLogged,
  }) {
    return notLogged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId, String role, String email)? logged,
    TResult? Function()? notLogged,
  }) {
    return notLogged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId, String role, String email)? logged,
    TResult Function()? notLogged,
    required TResult orElse(),
  }) {
    if (notLogged != null) {
      return notLogged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedUser value) logged,
    required TResult Function(NotLoggedUser value) notLogged,
  }) {
    return notLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedUser value)? logged,
    TResult? Function(NotLoggedUser value)? notLogged,
  }) {
    return notLogged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedUser value)? logged,
    TResult Function(NotLoggedUser value)? notLogged,
    required TResult orElse(),
  }) {
    if (notLogged != null) {
      return notLogged(this);
    }
    return orElse();
  }
}

abstract class NotLoggedUser extends User {
  factory NotLoggedUser() = _$NotLoggedUser;
  NotLoggedUser._() : super._();
}
