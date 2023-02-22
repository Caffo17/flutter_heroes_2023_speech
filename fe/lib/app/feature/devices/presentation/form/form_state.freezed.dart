// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeviceFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? udid,
            String? name,
            String? accountEmail,
            String? accountPassword,
            String? osVersion,
            Office? location,
            Os? osType,
            String? pin)
        create,
    required TResult Function(Device device) edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? udid,
            String? name,
            String? accountEmail,
            String? accountPassword,
            String? osVersion,
            Office? location,
            Os? osType,
            String? pin)?
        create,
    TResult? Function(Device device)? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? udid,
            String? name,
            String? accountEmail,
            String? accountPassword,
            String? osVersion,
            Office? location,
            Os? osType,
            String? pin)?
        create,
    TResult Function(Device device)? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateDeviceFormState value) create,
    required TResult Function(EditDeviceFormState value) edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateDeviceFormState value)? create,
    TResult? Function(EditDeviceFormState value)? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateDeviceFormState value)? create,
    TResult Function(EditDeviceFormState value)? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceFormStateCopyWith<$Res> {
  factory $DeviceFormStateCopyWith(
          DeviceFormState value, $Res Function(DeviceFormState) then) =
      _$DeviceFormStateCopyWithImpl<$Res, DeviceFormState>;
}

/// @nodoc
class _$DeviceFormStateCopyWithImpl<$Res, $Val extends DeviceFormState>
    implements $DeviceFormStateCopyWith<$Res> {
  _$DeviceFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateDeviceFormStateCopyWith<$Res> {
  factory _$$CreateDeviceFormStateCopyWith(_$CreateDeviceFormState value,
          $Res Function(_$CreateDeviceFormState) then) =
      __$$CreateDeviceFormStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? udid,
      String? name,
      String? accountEmail,
      String? accountPassword,
      String? osVersion,
      Office? location,
      Os? osType,
      String? pin});
}

/// @nodoc
class __$$CreateDeviceFormStateCopyWithImpl<$Res>
    extends _$DeviceFormStateCopyWithImpl<$Res, _$CreateDeviceFormState>
    implements _$$CreateDeviceFormStateCopyWith<$Res> {
  __$$CreateDeviceFormStateCopyWithImpl(_$CreateDeviceFormState _value,
      $Res Function(_$CreateDeviceFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? udid = freezed,
    Object? name = freezed,
    Object? accountEmail = freezed,
    Object? accountPassword = freezed,
    Object? osVersion = freezed,
    Object? location = freezed,
    Object? osType = freezed,
    Object? pin = freezed,
  }) {
    return _then(_$CreateDeviceFormState(
      udid: freezed == udid
          ? _value.udid
          : udid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      accountEmail: freezed == accountEmail
          ? _value.accountEmail
          : accountEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      accountPassword: freezed == accountPassword
          ? _value.accountPassword
          : accountPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      osVersion: freezed == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Office?,
      osType: freezed == osType
          ? _value.osType
          : osType // ignore: cast_nullable_to_non_nullable
              as Os?,
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreateDeviceFormState implements CreateDeviceFormState {
  _$CreateDeviceFormState(
      {this.udid,
      this.name,
      this.accountEmail,
      this.accountPassword,
      this.osVersion,
      this.location,
      this.osType,
      this.pin});

  @override
  String? udid;
  @override
  String? name;
  @override
  String? accountEmail;
  @override
  String? accountPassword;
  @override
  String? osVersion;
  @override
  Office? location;
  @override
  Os? osType;
  @override
  String? pin;

  @override
  String toString() {
    return 'DeviceFormState.create(udid: $udid, name: $name, accountEmail: $accountEmail, accountPassword: $accountPassword, osVersion: $osVersion, location: $location, osType: $osType, pin: $pin)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateDeviceFormStateCopyWith<_$CreateDeviceFormState> get copyWith =>
      __$$CreateDeviceFormStateCopyWithImpl<_$CreateDeviceFormState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? udid,
            String? name,
            String? accountEmail,
            String? accountPassword,
            String? osVersion,
            Office? location,
            Os? osType,
            String? pin)
        create,
    required TResult Function(Device device) edit,
  }) {
    return create(udid, name, accountEmail, accountPassword, osVersion,
        location, osType, pin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? udid,
            String? name,
            String? accountEmail,
            String? accountPassword,
            String? osVersion,
            Office? location,
            Os? osType,
            String? pin)?
        create,
    TResult? Function(Device device)? edit,
  }) {
    return create?.call(udid, name, accountEmail, accountPassword, osVersion,
        location, osType, pin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? udid,
            String? name,
            String? accountEmail,
            String? accountPassword,
            String? osVersion,
            Office? location,
            Os? osType,
            String? pin)?
        create,
    TResult Function(Device device)? edit,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(udid, name, accountEmail, accountPassword, osVersion,
          location, osType, pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateDeviceFormState value) create,
    required TResult Function(EditDeviceFormState value) edit,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateDeviceFormState value)? create,
    TResult? Function(EditDeviceFormState value)? edit,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateDeviceFormState value)? create,
    TResult Function(EditDeviceFormState value)? edit,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class CreateDeviceFormState implements DeviceFormState {
  factory CreateDeviceFormState(
      {String? udid,
      String? name,
      String? accountEmail,
      String? accountPassword,
      String? osVersion,
      Office? location,
      Os? osType,
      String? pin}) = _$CreateDeviceFormState;

  String? get udid;
  set udid(String? value);
  String? get name;
  set name(String? value);
  String? get accountEmail;
  set accountEmail(String? value);
  String? get accountPassword;
  set accountPassword(String? value);
  String? get osVersion;
  set osVersion(String? value);
  Office? get location;
  set location(Office? value);
  Os? get osType;
  set osType(Os? value);
  String? get pin;
  set pin(String? value);
  @JsonKey(ignore: true)
  _$$CreateDeviceFormStateCopyWith<_$CreateDeviceFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditDeviceFormStateCopyWith<$Res> {
  factory _$$EditDeviceFormStateCopyWith(_$EditDeviceFormState value,
          $Res Function(_$EditDeviceFormState) then) =
      __$$EditDeviceFormStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Device device});

  $DeviceCopyWith<$Res> get device;
}

/// @nodoc
class __$$EditDeviceFormStateCopyWithImpl<$Res>
    extends _$DeviceFormStateCopyWithImpl<$Res, _$EditDeviceFormState>
    implements _$$EditDeviceFormStateCopyWith<$Res> {
  __$$EditDeviceFormStateCopyWithImpl(
      _$EditDeviceFormState _value, $Res Function(_$EditDeviceFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
  }) {
    return _then(_$EditDeviceFormState(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as Device,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DeviceCopyWith<$Res> get device {
    return $DeviceCopyWith<$Res>(_value.device, (value) {
      return _then(_value.copyWith(device: value));
    });
  }
}

/// @nodoc

class _$EditDeviceFormState implements EditDeviceFormState {
  _$EditDeviceFormState({required this.device});

  @override
  Device device;

  @override
  String toString() {
    return 'DeviceFormState.edit(device: $device)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditDeviceFormStateCopyWith<_$EditDeviceFormState> get copyWith =>
      __$$EditDeviceFormStateCopyWithImpl<_$EditDeviceFormState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? udid,
            String? name,
            String? accountEmail,
            String? accountPassword,
            String? osVersion,
            Office? location,
            Os? osType,
            String? pin)
        create,
    required TResult Function(Device device) edit,
  }) {
    return edit(device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? udid,
            String? name,
            String? accountEmail,
            String? accountPassword,
            String? osVersion,
            Office? location,
            Os? osType,
            String? pin)?
        create,
    TResult? Function(Device device)? edit,
  }) {
    return edit?.call(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? udid,
            String? name,
            String? accountEmail,
            String? accountPassword,
            String? osVersion,
            Office? location,
            Os? osType,
            String? pin)?
        create,
    TResult Function(Device device)? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateDeviceFormState value) create,
    required TResult Function(EditDeviceFormState value) edit,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateDeviceFormState value)? create,
    TResult? Function(EditDeviceFormState value)? edit,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateDeviceFormState value)? create,
    TResult Function(EditDeviceFormState value)? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class EditDeviceFormState implements DeviceFormState {
  factory EditDeviceFormState({required Device device}) = _$EditDeviceFormState;

  Device get device;
  set device(Device value);
  @JsonKey(ignore: true)
  _$$EditDeviceFormStateCopyWith<_$EditDeviceFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
