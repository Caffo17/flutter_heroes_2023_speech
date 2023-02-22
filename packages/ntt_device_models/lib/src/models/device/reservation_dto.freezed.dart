// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReservationDto _$ReservationDtoFromJson(Map<String, dynamic> json) {
  return _ReservationModel.fromJson(json);
}

/// @nodoc
mixin _$ReservationDto {
  int get userId => throw _privateConstructorUsedError;
  String get startedAt => throw _privateConstructorUsedError;
  String? get finishedAt => throw _privateConstructorUsedError;
  String get userEmail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReservationDtoCopyWith<ReservationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationDtoCopyWith<$Res> {
  factory $ReservationDtoCopyWith(
          ReservationDto value, $Res Function(ReservationDto) then) =
      _$ReservationDtoCopyWithImpl<$Res, ReservationDto>;
  @useResult
  $Res call(
      {int userId, String startedAt, String? finishedAt, String userEmail});
}

/// @nodoc
class _$ReservationDtoCopyWithImpl<$Res, $Val extends ReservationDto>
    implements $ReservationDtoCopyWith<$Res> {
  _$ReservationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? startedAt = null,
    Object? finishedAt = freezed,
    Object? userEmail = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String,
      finishedAt: freezed == finishedAt
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReservationModelCopyWith<$Res>
    implements $ReservationDtoCopyWith<$Res> {
  factory _$$_ReservationModelCopyWith(
          _$_ReservationModel value, $Res Function(_$_ReservationModel) then) =
      __$$_ReservationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userId, String startedAt, String? finishedAt, String userEmail});
}

/// @nodoc
class __$$_ReservationModelCopyWithImpl<$Res>
    extends _$ReservationDtoCopyWithImpl<$Res, _$_ReservationModel>
    implements _$$_ReservationModelCopyWith<$Res> {
  __$$_ReservationModelCopyWithImpl(
      _$_ReservationModel _value, $Res Function(_$_ReservationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? startedAt = null,
    Object? finishedAt = freezed,
    Object? userEmail = null,
  }) {
    return _then(_$_ReservationModel(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String,
      finishedAt: freezed == finishedAt
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReservationModel implements _ReservationModel {
  _$_ReservationModel(
      {required this.userId,
      required this.startedAt,
      this.finishedAt,
      required this.userEmail});

  factory _$_ReservationModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReservationModelFromJson(json);

  @override
  final int userId;
  @override
  final String startedAt;
  @override
  final String? finishedAt;
  @override
  final String userEmail;

  @override
  String toString() {
    return 'ReservationDto(userId: $userId, startedAt: $startedAt, finishedAt: $finishedAt, userEmail: $userEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReservationModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.finishedAt, finishedAt) ||
                other.finishedAt == finishedAt) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, startedAt, finishedAt, userEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReservationModelCopyWith<_$_ReservationModel> get copyWith =>
      __$$_ReservationModelCopyWithImpl<_$_ReservationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReservationModelToJson(
      this,
    );
  }
}

abstract class _ReservationModel implements ReservationDto {
  factory _ReservationModel(
      {required final int userId,
      required final String startedAt,
      final String? finishedAt,
      required final String userEmail}) = _$_ReservationModel;

  factory _ReservationModel.fromJson(Map<String, dynamic> json) =
      _$_ReservationModel.fromJson;

  @override
  int get userId;
  @override
  String get startedAt;
  @override
  String? get finishedAt;
  @override
  String get userEmail;
  @override
  @JsonKey(ignore: true)
  _$$_ReservationModelCopyWith<_$_ReservationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
