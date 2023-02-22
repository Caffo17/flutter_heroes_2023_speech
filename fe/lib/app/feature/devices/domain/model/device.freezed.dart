// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Device {
  String get udid => throw _privateConstructorUsedError;
  set udid(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get accountEmail => throw _privateConstructorUsedError;
  set accountEmail(String value) => throw _privateConstructorUsedError;
  String get accountPassword => throw _privateConstructorUsedError;
  set accountPassword(String value) => throw _privateConstructorUsedError;
  String get osVersion => throw _privateConstructorUsedError;
  set osVersion(String value) => throw _privateConstructorUsedError;
  DeviceStatus get status => throw _privateConstructorUsedError;
  set status(DeviceStatus value) => throw _privateConstructorUsedError;
  Office get location => throw _privateConstructorUsedError;
  set location(Office value) => throw _privateConstructorUsedError;
  Os get osType => throw _privateConstructorUsedError;
  set osType(Os value) => throw _privateConstructorUsedError;
  String? get pin => throw _privateConstructorUsedError;
  set pin(String? value) => throw _privateConstructorUsedError;
  List<Reservation> get useHistory => throw _privateConstructorUsedError;
  set useHistory(List<Reservation> value) => throw _privateConstructorUsedError;
  Reservation? get reservation => throw _privateConstructorUsedError;
  set reservation(Reservation? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceCopyWith<Device> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceCopyWith<$Res> {
  factory $DeviceCopyWith(Device value, $Res Function(Device) then) =
      _$DeviceCopyWithImpl<$Res, Device>;
  @useResult
  $Res call(
      {String udid,
      String name,
      String accountEmail,
      String accountPassword,
      String osVersion,
      DeviceStatus status,
      Office location,
      Os osType,
      String? pin,
      List<Reservation> useHistory,
      Reservation? reservation});

  $ReservationCopyWith<$Res>? get reservation;
}

/// @nodoc
class _$DeviceCopyWithImpl<$Res, $Val extends Device>
    implements $DeviceCopyWith<$Res> {
  _$DeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? udid = null,
    Object? name = null,
    Object? accountEmail = null,
    Object? accountPassword = null,
    Object? osVersion = null,
    Object? status = null,
    Object? location = null,
    Object? osType = null,
    Object? pin = freezed,
    Object? useHistory = null,
    Object? reservation = freezed,
  }) {
    return _then(_value.copyWith(
      udid: null == udid
          ? _value.udid
          : udid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      accountEmail: null == accountEmail
          ? _value.accountEmail
          : accountEmail // ignore: cast_nullable_to_non_nullable
              as String,
      accountPassword: null == accountPassword
          ? _value.accountPassword
          : accountPassword // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: null == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeviceStatus,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Office,
      osType: null == osType
          ? _value.osType
          : osType // ignore: cast_nullable_to_non_nullable
              as Os,
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      useHistory: null == useHistory
          ? _value.useHistory
          : useHistory // ignore: cast_nullable_to_non_nullable
              as List<Reservation>,
      reservation: freezed == reservation
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as Reservation?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReservationCopyWith<$Res>? get reservation {
    if (_value.reservation == null) {
      return null;
    }

    return $ReservationCopyWith<$Res>(_value.reservation!, (value) {
      return _then(_value.copyWith(reservation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DeviceCopyWith<$Res> implements $DeviceCopyWith<$Res> {
  factory _$$_DeviceCopyWith(_$_Device value, $Res Function(_$_Device) then) =
      __$$_DeviceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String udid,
      String name,
      String accountEmail,
      String accountPassword,
      String osVersion,
      DeviceStatus status,
      Office location,
      Os osType,
      String? pin,
      List<Reservation> useHistory,
      Reservation? reservation});

  @override
  $ReservationCopyWith<$Res>? get reservation;
}

/// @nodoc
class __$$_DeviceCopyWithImpl<$Res>
    extends _$DeviceCopyWithImpl<$Res, _$_Device>
    implements _$$_DeviceCopyWith<$Res> {
  __$$_DeviceCopyWithImpl(_$_Device _value, $Res Function(_$_Device) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? udid = null,
    Object? name = null,
    Object? accountEmail = null,
    Object? accountPassword = null,
    Object? osVersion = null,
    Object? status = null,
    Object? location = null,
    Object? osType = null,
    Object? pin = freezed,
    Object? useHistory = null,
    Object? reservation = freezed,
  }) {
    return _then(_$_Device(
      udid: null == udid
          ? _value.udid
          : udid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      accountEmail: null == accountEmail
          ? _value.accountEmail
          : accountEmail // ignore: cast_nullable_to_non_nullable
              as String,
      accountPassword: null == accountPassword
          ? _value.accountPassword
          : accountPassword // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: null == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeviceStatus,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Office,
      osType: null == osType
          ? _value.osType
          : osType // ignore: cast_nullable_to_non_nullable
              as Os,
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      useHistory: null == useHistory
          ? _value.useHistory
          : useHistory // ignore: cast_nullable_to_non_nullable
              as List<Reservation>,
      reservation: freezed == reservation
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as Reservation?,
    ));
  }
}

/// @nodoc

class _$_Device implements _Device {
  _$_Device(
      {required this.udid,
      required this.name,
      required this.accountEmail,
      required this.accountPassword,
      required this.osVersion,
      required this.status,
      required this.location,
      required this.osType,
      this.pin,
      this.useHistory = const [],
      this.reservation});

  @override
  String udid;
  @override
  String name;
  @override
  String accountEmail;
  @override
  String accountPassword;
  @override
  String osVersion;
  @override
  DeviceStatus status;
  @override
  Office location;
  @override
  Os osType;
  @override
  String? pin;
  @override
  @JsonKey()
  List<Reservation> useHistory;
  @override
  Reservation? reservation;

  @override
  String toString() {
    return 'Device(udid: $udid, name: $name, accountEmail: $accountEmail, accountPassword: $accountPassword, osVersion: $osVersion, status: $status, location: $location, osType: $osType, pin: $pin, useHistory: $useHistory, reservation: $reservation)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceCopyWith<_$_Device> get copyWith =>
      __$$_DeviceCopyWithImpl<_$_Device>(this, _$identity);
}

abstract class _Device implements Device {
  factory _Device(
      {required String udid,
      required String name,
      required String accountEmail,
      required String accountPassword,
      required String osVersion,
      required DeviceStatus status,
      required Office location,
      required Os osType,
      String? pin,
      List<Reservation> useHistory,
      Reservation? reservation}) = _$_Device;

  @override
  String get udid;
  set udid(String value);
  @override
  String get name;
  set name(String value);
  @override
  String get accountEmail;
  set accountEmail(String value);
  @override
  String get accountPassword;
  set accountPassword(String value);
  @override
  String get osVersion;
  set osVersion(String value);
  @override
  DeviceStatus get status;
  set status(DeviceStatus value);
  @override
  Office get location;
  set location(Office value);
  @override
  Os get osType;
  set osType(Os value);
  @override
  String? get pin;
  set pin(String? value);
  @override
  List<Reservation> get useHistory;
  set useHistory(List<Reservation> value);
  @override
  Reservation? get reservation;
  set reservation(Reservation? value);
  @override
  @JsonKey(ignore: true)
  _$$_DeviceCopyWith<_$_Device> get copyWith =>
      throw _privateConstructorUsedError;
}
