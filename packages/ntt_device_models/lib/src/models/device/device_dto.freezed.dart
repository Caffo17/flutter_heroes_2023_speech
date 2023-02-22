// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceDto _$DeviceDtoFromJson(Map<String, dynamic> json) {
  return _DeviceDto.fromJson(json);
}

/// @nodoc
mixin _$DeviceDto {
  String get udid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DeviceStatus get status => throw _privateConstructorUsedError;
  Office get office => throw _privateConstructorUsedError;
  String get accountEmail => throw _privateConstructorUsedError;
  String get accountPassword => throw _privateConstructorUsedError;
  String? get pin => throw _privateConstructorUsedError;
  Os get os => throw _privateConstructorUsedError;
  String get osVersion => throw _privateConstructorUsedError;
  @JsonKey(toJson: reservationToJson)
  ReservationDto? get reservation => throw _privateConstructorUsedError;
  @JsonKey(toJson: useHistoryToJson)
  List<ReservationDto> get useHistory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceDtoCopyWith<DeviceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceDtoCopyWith<$Res> {
  factory $DeviceDtoCopyWith(DeviceDto value, $Res Function(DeviceDto) then) =
      _$DeviceDtoCopyWithImpl<$Res, DeviceDto>;
  @useResult
  $Res call(
      {String udid,
      String name,
      DeviceStatus status,
      Office office,
      String accountEmail,
      String accountPassword,
      String? pin,
      Os os,
      String osVersion,
      @JsonKey(toJson: reservationToJson) ReservationDto? reservation,
      @JsonKey(toJson: useHistoryToJson) List<ReservationDto> useHistory});

  $ReservationDtoCopyWith<$Res>? get reservation;
}

/// @nodoc
class _$DeviceDtoCopyWithImpl<$Res, $Val extends DeviceDto>
    implements $DeviceDtoCopyWith<$Res> {
  _$DeviceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? udid = null,
    Object? name = null,
    Object? status = null,
    Object? office = null,
    Object? accountEmail = null,
    Object? accountPassword = null,
    Object? pin = freezed,
    Object? os = null,
    Object? osVersion = null,
    Object? reservation = freezed,
    Object? useHistory = null,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeviceStatus,
      office: null == office
          ? _value.office
          : office // ignore: cast_nullable_to_non_nullable
              as Office,
      accountEmail: null == accountEmail
          ? _value.accountEmail
          : accountEmail // ignore: cast_nullable_to_non_nullable
              as String,
      accountPassword: null == accountPassword
          ? _value.accountPassword
          : accountPassword // ignore: cast_nullable_to_non_nullable
              as String,
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      os: null == os
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as Os,
      osVersion: null == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      reservation: freezed == reservation
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as ReservationDto?,
      useHistory: null == useHistory
          ? _value.useHistory
          : useHistory // ignore: cast_nullable_to_non_nullable
              as List<ReservationDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReservationDtoCopyWith<$Res>? get reservation {
    if (_value.reservation == null) {
      return null;
    }

    return $ReservationDtoCopyWith<$Res>(_value.reservation!, (value) {
      return _then(_value.copyWith(reservation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DeviceDtoCopyWith<$Res> implements $DeviceDtoCopyWith<$Res> {
  factory _$$_DeviceDtoCopyWith(
          _$_DeviceDto value, $Res Function(_$_DeviceDto) then) =
      __$$_DeviceDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String udid,
      String name,
      DeviceStatus status,
      Office office,
      String accountEmail,
      String accountPassword,
      String? pin,
      Os os,
      String osVersion,
      @JsonKey(toJson: reservationToJson) ReservationDto? reservation,
      @JsonKey(toJson: useHistoryToJson) List<ReservationDto> useHistory});

  @override
  $ReservationDtoCopyWith<$Res>? get reservation;
}

/// @nodoc
class __$$_DeviceDtoCopyWithImpl<$Res>
    extends _$DeviceDtoCopyWithImpl<$Res, _$_DeviceDto>
    implements _$$_DeviceDtoCopyWith<$Res> {
  __$$_DeviceDtoCopyWithImpl(
      _$_DeviceDto _value, $Res Function(_$_DeviceDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? udid = null,
    Object? name = null,
    Object? status = null,
    Object? office = null,
    Object? accountEmail = null,
    Object? accountPassword = null,
    Object? pin = freezed,
    Object? os = null,
    Object? osVersion = null,
    Object? reservation = freezed,
    Object? useHistory = null,
  }) {
    return _then(_$_DeviceDto(
      udid: null == udid
          ? _value.udid
          : udid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeviceStatus,
      office: null == office
          ? _value.office
          : office // ignore: cast_nullable_to_non_nullable
              as Office,
      accountEmail: null == accountEmail
          ? _value.accountEmail
          : accountEmail // ignore: cast_nullable_to_non_nullable
              as String,
      accountPassword: null == accountPassword
          ? _value.accountPassword
          : accountPassword // ignore: cast_nullable_to_non_nullable
              as String,
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      os: null == os
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as Os,
      osVersion: null == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      reservation: freezed == reservation
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as ReservationDto?,
      useHistory: null == useHistory
          ? _value._useHistory
          : useHistory // ignore: cast_nullable_to_non_nullable
              as List<ReservationDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceDto implements _DeviceDto {
  _$_DeviceDto(
      {required this.udid,
      required this.name,
      this.status = DeviceStatus.available,
      required this.office,
      required this.accountEmail,
      required this.accountPassword,
      this.pin,
      required this.os,
      required this.osVersion,
      @JsonKey(toJson: reservationToJson)
          this.reservation,
      @JsonKey(toJson: useHistoryToJson)
          final List<ReservationDto> useHistory = const []})
      : _useHistory = useHistory;

  factory _$_DeviceDto.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceDtoFromJson(json);

  @override
  final String udid;
  @override
  final String name;
  @override
  @JsonKey()
  final DeviceStatus status;
  @override
  final Office office;
  @override
  final String accountEmail;
  @override
  final String accountPassword;
  @override
  final String? pin;
  @override
  final Os os;
  @override
  final String osVersion;
  @override
  @JsonKey(toJson: reservationToJson)
  final ReservationDto? reservation;
  final List<ReservationDto> _useHistory;
  @override
  @JsonKey(toJson: useHistoryToJson)
  List<ReservationDto> get useHistory {
    if (_useHistory is EqualUnmodifiableListView) return _useHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_useHistory);
  }

  @override
  String toString() {
    return 'DeviceDto(udid: $udid, name: $name, status: $status, office: $office, accountEmail: $accountEmail, accountPassword: $accountPassword, pin: $pin, os: $os, osVersion: $osVersion, reservation: $reservation, useHistory: $useHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceDto &&
            (identical(other.udid, udid) || other.udid == udid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.office, office) || other.office == office) &&
            (identical(other.accountEmail, accountEmail) ||
                other.accountEmail == accountEmail) &&
            (identical(other.accountPassword, accountPassword) ||
                other.accountPassword == accountPassword) &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.os, os) || other.os == os) &&
            (identical(other.osVersion, osVersion) ||
                other.osVersion == osVersion) &&
            (identical(other.reservation, reservation) ||
                other.reservation == reservation) &&
            const DeepCollectionEquality()
                .equals(other._useHistory, _useHistory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      udid,
      name,
      status,
      office,
      accountEmail,
      accountPassword,
      pin,
      os,
      osVersion,
      reservation,
      const DeepCollectionEquality().hash(_useHistory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceDtoCopyWith<_$_DeviceDto> get copyWith =>
      __$$_DeviceDtoCopyWithImpl<_$_DeviceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceDtoToJson(
      this,
    );
  }
}

abstract class _DeviceDto implements DeviceDto {
  factory _DeviceDto(
      {required final String udid,
      required final String name,
      final DeviceStatus status,
      required final Office office,
      required final String accountEmail,
      required final String accountPassword,
      final String? pin,
      required final Os os,
      required final String osVersion,
      @JsonKey(toJson: reservationToJson)
          final ReservationDto? reservation,
      @JsonKey(toJson: useHistoryToJson)
          final List<ReservationDto> useHistory}) = _$_DeviceDto;

  factory _DeviceDto.fromJson(Map<String, dynamic> json) =
      _$_DeviceDto.fromJson;

  @override
  String get udid;
  @override
  String get name;
  @override
  DeviceStatus get status;
  @override
  Office get office;
  @override
  String get accountEmail;
  @override
  String get accountPassword;
  @override
  String? get pin;
  @override
  Os get os;
  @override
  String get osVersion;
  @override
  @JsonKey(toJson: reservationToJson)
  ReservationDto? get reservation;
  @override
  @JsonKey(toJson: useHistoryToJson)
  List<ReservationDto> get useHistory;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceDtoCopyWith<_$_DeviceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
