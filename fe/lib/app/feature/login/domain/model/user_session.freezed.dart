// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserSession {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoggedUser user, String token) alive,
    required TResult Function() notAlive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoggedUser user, String token)? alive,
    TResult? Function()? notAlive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoggedUser user, String token)? alive,
    TResult Function()? notAlive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AliveUserSession value) alive,
    required TResult Function(NotAliveUserSession value) notAlive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AliveUserSession value)? alive,
    TResult? Function(NotAliveUserSession value)? notAlive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AliveUserSession value)? alive,
    TResult Function(NotAliveUserSession value)? notAlive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSessionCopyWith<$Res> {
  factory $UserSessionCopyWith(
          UserSession value, $Res Function(UserSession) then) =
      _$UserSessionCopyWithImpl<$Res, UserSession>;
}

/// @nodoc
class _$UserSessionCopyWithImpl<$Res, $Val extends UserSession>
    implements $UserSessionCopyWith<$Res> {
  _$UserSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AliveUserSessionCopyWith<$Res> {
  factory _$$AliveUserSessionCopyWith(
          _$AliveUserSession value, $Res Function(_$AliveUserSession) then) =
      __$$AliveUserSessionCopyWithImpl<$Res>;
  @useResult
  $Res call({LoggedUser user, String token});
}

/// @nodoc
class __$$AliveUserSessionCopyWithImpl<$Res>
    extends _$UserSessionCopyWithImpl<$Res, _$AliveUserSession>
    implements _$$AliveUserSessionCopyWith<$Res> {
  __$$AliveUserSessionCopyWithImpl(
      _$AliveUserSession _value, $Res Function(_$AliveUserSession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? token = null,
  }) {
    return _then(_$AliveUserSession(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoggedUser,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AliveUserSession extends AliveUserSession {
  _$AliveUserSession({required this.user, required this.token}) : super._();

  @override
  final LoggedUser user;
  @override
  final String token;

  @override
  String toString() {
    return 'UserSession.alive(user: $user, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AliveUserSession &&
            const DeepCollectionEquality().equals(other.user, user) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(user), token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AliveUserSessionCopyWith<_$AliveUserSession> get copyWith =>
      __$$AliveUserSessionCopyWithImpl<_$AliveUserSession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoggedUser user, String token) alive,
    required TResult Function() notAlive,
  }) {
    return alive(user, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoggedUser user, String token)? alive,
    TResult? Function()? notAlive,
  }) {
    return alive?.call(user, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoggedUser user, String token)? alive,
    TResult Function()? notAlive,
    required TResult orElse(),
  }) {
    if (alive != null) {
      return alive(user, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AliveUserSession value) alive,
    required TResult Function(NotAliveUserSession value) notAlive,
  }) {
    return alive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AliveUserSession value)? alive,
    TResult? Function(NotAliveUserSession value)? notAlive,
  }) {
    return alive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AliveUserSession value)? alive,
    TResult Function(NotAliveUserSession value)? notAlive,
    required TResult orElse(),
  }) {
    if (alive != null) {
      return alive(this);
    }
    return orElse();
  }
}

abstract class AliveUserSession extends UserSession {
  factory AliveUserSession(
      {required final LoggedUser user,
      required final String token}) = _$AliveUserSession;
  AliveUserSession._() : super._();

  LoggedUser get user;
  String get token;
  @JsonKey(ignore: true)
  _$$AliveUserSessionCopyWith<_$AliveUserSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotAliveUserSessionCopyWith<$Res> {
  factory _$$NotAliveUserSessionCopyWith(_$NotAliveUserSession value,
          $Res Function(_$NotAliveUserSession) then) =
      __$$NotAliveUserSessionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotAliveUserSessionCopyWithImpl<$Res>
    extends _$UserSessionCopyWithImpl<$Res, _$NotAliveUserSession>
    implements _$$NotAliveUserSessionCopyWith<$Res> {
  __$$NotAliveUserSessionCopyWithImpl(
      _$NotAliveUserSession _value, $Res Function(_$NotAliveUserSession) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotAliveUserSession extends NotAliveUserSession {
  _$NotAliveUserSession() : super._();

  @override
  String toString() {
    return 'UserSession.notAlive()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotAliveUserSession);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoggedUser user, String token) alive,
    required TResult Function() notAlive,
  }) {
    return notAlive();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoggedUser user, String token)? alive,
    TResult? Function()? notAlive,
  }) {
    return notAlive?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoggedUser user, String token)? alive,
    TResult Function()? notAlive,
    required TResult orElse(),
  }) {
    if (notAlive != null) {
      return notAlive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AliveUserSession value) alive,
    required TResult Function(NotAliveUserSession value) notAlive,
  }) {
    return notAlive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AliveUserSession value)? alive,
    TResult? Function(NotAliveUserSession value)? notAlive,
  }) {
    return notAlive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AliveUserSession value)? alive,
    TResult Function(NotAliveUserSession value)? notAlive,
    required TResult orElse(),
  }) {
    if (notAlive != null) {
      return notAlive(this);
    }
    return orElse();
  }
}

abstract class NotAliveUserSession extends UserSession {
  factory NotAliveUserSession() = _$NotAliveUserSession;
  NotAliveUserSession._() : super._();
}
