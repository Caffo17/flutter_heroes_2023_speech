// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Reservation {
  int get userId => throw _privateConstructorUsedError;
  String get userEmail => throw _privateConstructorUsedError;
  DateTime get startedAt => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId, String userEmail, DateTime startedAt,
            DateTime finishedAt)
        completed,
    required TResult Function(int userId, String userEmail, DateTime startedAt)
        ongoing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId, String userEmail, DateTime startedAt,
            DateTime finishedAt)?
        completed,
    TResult? Function(int userId, String userEmail, DateTime startedAt)?
        ongoing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId, String userEmail, DateTime startedAt,
            DateTime finishedAt)?
        completed,
    TResult Function(int userId, String userEmail, DateTime startedAt)? ongoing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompletedReservation value) completed,
    required TResult Function(OngoingReservation value) ongoing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompletedReservation value)? completed,
    TResult? Function(OngoingReservation value)? ongoing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletedReservation value)? completed,
    TResult Function(OngoingReservation value)? ongoing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReservationCopyWith<Reservation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationCopyWith<$Res> {
  factory $ReservationCopyWith(
          Reservation value, $Res Function(Reservation) then) =
      _$ReservationCopyWithImpl<$Res, Reservation>;
  @useResult
  $Res call({int userId, String userEmail, DateTime startedAt});
}

/// @nodoc
class _$ReservationCopyWithImpl<$Res, $Val extends Reservation>
    implements $ReservationCopyWith<$Res> {
  _$ReservationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userEmail = null,
    Object? startedAt = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompletedReservationCopyWith<$Res>
    implements $ReservationCopyWith<$Res> {
  factory _$$CompletedReservationCopyWith(_$CompletedReservation value,
          $Res Function(_$CompletedReservation) then) =
      __$$CompletedReservationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userId, String userEmail, DateTime startedAt, DateTime finishedAt});
}

/// @nodoc
class __$$CompletedReservationCopyWithImpl<$Res>
    extends _$ReservationCopyWithImpl<$Res, _$CompletedReservation>
    implements _$$CompletedReservationCopyWith<$Res> {
  __$$CompletedReservationCopyWithImpl(_$CompletedReservation _value,
      $Res Function(_$CompletedReservation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userEmail = null,
    Object? startedAt = null,
    Object? finishedAt = null,
  }) {
    return _then(_$CompletedReservation(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      finishedAt: null == finishedAt
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$CompletedReservation implements CompletedReservation {
  _$CompletedReservation(
      {required this.userId,
      required this.userEmail,
      required this.startedAt,
      required this.finishedAt});

  @override
  final int userId;
  @override
  final String userEmail;
  @override
  final DateTime startedAt;
  @override
  final DateTime finishedAt;

  @override
  String toString() {
    return 'Reservation.completed(userId: $userId, userEmail: $userEmail, startedAt: $startedAt, finishedAt: $finishedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedReservation &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.finishedAt, finishedAt) ||
                other.finishedAt == finishedAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, userEmail, startedAt, finishedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedReservationCopyWith<_$CompletedReservation> get copyWith =>
      __$$CompletedReservationCopyWithImpl<_$CompletedReservation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId, String userEmail, DateTime startedAt,
            DateTime finishedAt)
        completed,
    required TResult Function(int userId, String userEmail, DateTime startedAt)
        ongoing,
  }) {
    return completed(userId, userEmail, startedAt, finishedAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId, String userEmail, DateTime startedAt,
            DateTime finishedAt)?
        completed,
    TResult? Function(int userId, String userEmail, DateTime startedAt)?
        ongoing,
  }) {
    return completed?.call(userId, userEmail, startedAt, finishedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId, String userEmail, DateTime startedAt,
            DateTime finishedAt)?
        completed,
    TResult Function(int userId, String userEmail, DateTime startedAt)? ongoing,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(userId, userEmail, startedAt, finishedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompletedReservation value) completed,
    required TResult Function(OngoingReservation value) ongoing,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompletedReservation value)? completed,
    TResult? Function(OngoingReservation value)? ongoing,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletedReservation value)? completed,
    TResult Function(OngoingReservation value)? ongoing,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class CompletedReservation implements Reservation {
  factory CompletedReservation(
      {required final int userId,
      required final String userEmail,
      required final DateTime startedAt,
      required final DateTime finishedAt}) = _$CompletedReservation;

  @override
  int get userId;
  @override
  String get userEmail;
  @override
  DateTime get startedAt;
  DateTime get finishedAt;
  @override
  @JsonKey(ignore: true)
  _$$CompletedReservationCopyWith<_$CompletedReservation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OngoingReservationCopyWith<$Res>
    implements $ReservationCopyWith<$Res> {
  factory _$$OngoingReservationCopyWith(_$OngoingReservation value,
          $Res Function(_$OngoingReservation) then) =
      __$$OngoingReservationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, String userEmail, DateTime startedAt});
}

/// @nodoc
class __$$OngoingReservationCopyWithImpl<$Res>
    extends _$ReservationCopyWithImpl<$Res, _$OngoingReservation>
    implements _$$OngoingReservationCopyWith<$Res> {
  __$$OngoingReservationCopyWithImpl(
      _$OngoingReservation _value, $Res Function(_$OngoingReservation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userEmail = null,
    Object? startedAt = null,
  }) {
    return _then(_$OngoingReservation(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$OngoingReservation implements OngoingReservation {
  _$OngoingReservation(
      {required this.userId, required this.userEmail, required this.startedAt});

  @override
  final int userId;
  @override
  final String userEmail;
  @override
  final DateTime startedAt;

  @override
  String toString() {
    return 'Reservation.ongoing(userId: $userId, userEmail: $userEmail, startedAt: $startedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OngoingReservation &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, userEmail, startedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OngoingReservationCopyWith<_$OngoingReservation> get copyWith =>
      __$$OngoingReservationCopyWithImpl<_$OngoingReservation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId, String userEmail, DateTime startedAt,
            DateTime finishedAt)
        completed,
    required TResult Function(int userId, String userEmail, DateTime startedAt)
        ongoing,
  }) {
    return ongoing(userId, userEmail, startedAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId, String userEmail, DateTime startedAt,
            DateTime finishedAt)?
        completed,
    TResult? Function(int userId, String userEmail, DateTime startedAt)?
        ongoing,
  }) {
    return ongoing?.call(userId, userEmail, startedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId, String userEmail, DateTime startedAt,
            DateTime finishedAt)?
        completed,
    TResult Function(int userId, String userEmail, DateTime startedAt)? ongoing,
    required TResult orElse(),
  }) {
    if (ongoing != null) {
      return ongoing(userId, userEmail, startedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompletedReservation value) completed,
    required TResult Function(OngoingReservation value) ongoing,
  }) {
    return ongoing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompletedReservation value)? completed,
    TResult? Function(OngoingReservation value)? ongoing,
  }) {
    return ongoing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletedReservation value)? completed,
    TResult Function(OngoingReservation value)? ongoing,
    required TResult orElse(),
  }) {
    if (ongoing != null) {
      return ongoing(this);
    }
    return orElse();
  }
}

abstract class OngoingReservation implements Reservation {
  factory OngoingReservation(
      {required final int userId,
      required final String userEmail,
      required final DateTime startedAt}) = _$OngoingReservation;

  @override
  int get userId;
  @override
  String get userEmail;
  @override
  DateTime get startedAt;
  @override
  @JsonKey(ignore: true)
  _$$OngoingReservationCopyWith<_$OngoingReservation> get copyWith =>
      throw _privateConstructorUsedError;
}
