// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginPayload _$LoginPayloadFromJson(Map<String, dynamic> json) {
  return _LoginPayload.fromJson(json);
}

/// @nodoc
mixin _$LoginPayload {
  UserDto get user => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginPayloadCopyWith<LoginPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPayloadCopyWith<$Res> {
  factory $LoginPayloadCopyWith(
          LoginPayload value, $Res Function(LoginPayload) then) =
      _$LoginPayloadCopyWithImpl<$Res, LoginPayload>;
  @useResult
  $Res call({UserDto user, String token});

  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$LoginPayloadCopyWithImpl<$Res, $Val extends LoginPayload>
    implements $LoginPayloadCopyWith<$Res> {
  _$LoginPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginPayloadCopyWith<$Res>
    implements $LoginPayloadCopyWith<$Res> {
  factory _$$_LoginPayloadCopyWith(
          _$_LoginPayload value, $Res Function(_$_LoginPayload) then) =
      __$$_LoginPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserDto user, String token});

  @override
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$_LoginPayloadCopyWithImpl<$Res>
    extends _$LoginPayloadCopyWithImpl<$Res, _$_LoginPayload>
    implements _$$_LoginPayloadCopyWith<$Res> {
  __$$_LoginPayloadCopyWithImpl(
      _$_LoginPayload _value, $Res Function(_$_LoginPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? token = null,
  }) {
    return _then(_$_LoginPayload(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginPayload implements _LoginPayload {
  _$_LoginPayload({required this.user, required this.token});

  factory _$_LoginPayload.fromJson(Map<String, dynamic> json) =>
      _$$_LoginPayloadFromJson(json);

  @override
  final UserDto user;
  @override
  final String token;

  @override
  String toString() {
    return 'LoginPayload(user: $user, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginPayload &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginPayloadCopyWith<_$_LoginPayload> get copyWith =>
      __$$_LoginPayloadCopyWithImpl<_$_LoginPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginPayloadToJson(
      this,
    );
  }
}

abstract class _LoginPayload implements LoginPayload {
  factory _LoginPayload(
      {required final UserDto user,
      required final String token}) = _$_LoginPayload;

  factory _LoginPayload.fromJson(Map<String, dynamic> json) =
      _$_LoginPayload.fromJson;

  @override
  UserDto get user;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_LoginPayloadCopyWith<_$_LoginPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
