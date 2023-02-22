// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_devices_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetDevicesPayload _$GetDevicesPayloadFromJson(Map<String, dynamic> json) {
  return _GetDevicesPayload.fromJson(json);
}

/// @nodoc
mixin _$GetDevicesPayload {
  @JsonKey(name: 'list')
  List<DeviceDto> get devices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDevicesPayloadCopyWith<GetDevicesPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDevicesPayloadCopyWith<$Res> {
  factory $GetDevicesPayloadCopyWith(
          GetDevicesPayload value, $Res Function(GetDevicesPayload) then) =
      _$GetDevicesPayloadCopyWithImpl<$Res, GetDevicesPayload>;
  @useResult
  $Res call({@JsonKey(name: 'list') List<DeviceDto> devices});
}

/// @nodoc
class _$GetDevicesPayloadCopyWithImpl<$Res, $Val extends GetDevicesPayload>
    implements $GetDevicesPayloadCopyWith<$Res> {
  _$GetDevicesPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devices = null,
  }) {
    return _then(_value.copyWith(
      devices: null == devices
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<DeviceDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetDevicesPayloadCopyWith<$Res>
    implements $GetDevicesPayloadCopyWith<$Res> {
  factory _$$_GetDevicesPayloadCopyWith(_$_GetDevicesPayload value,
          $Res Function(_$_GetDevicesPayload) then) =
      __$$_GetDevicesPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'list') List<DeviceDto> devices});
}

/// @nodoc
class __$$_GetDevicesPayloadCopyWithImpl<$Res>
    extends _$GetDevicesPayloadCopyWithImpl<$Res, _$_GetDevicesPayload>
    implements _$$_GetDevicesPayloadCopyWith<$Res> {
  __$$_GetDevicesPayloadCopyWithImpl(
      _$_GetDevicesPayload _value, $Res Function(_$_GetDevicesPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devices = null,
  }) {
    return _then(_$_GetDevicesPayload(
      devices: null == devices
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<DeviceDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDevicesPayload implements _GetDevicesPayload {
  _$_GetDevicesPayload(
      {@JsonKey(name: 'list') final List<DeviceDto> devices = const []})
      : _devices = devices;

  factory _$_GetDevicesPayload.fromJson(Map<String, dynamic> json) =>
      _$$_GetDevicesPayloadFromJson(json);

  final List<DeviceDto> _devices;
  @override
  @JsonKey(name: 'list')
  List<DeviceDto> get devices {
    if (_devices is EqualUnmodifiableListView) return _devices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_devices);
  }

  @override
  String toString() {
    return 'GetDevicesPayload(devices: $devices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetDevicesPayload &&
            const DeepCollectionEquality().equals(other._devices, _devices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_devices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDevicesPayloadCopyWith<_$_GetDevicesPayload> get copyWith =>
      __$$_GetDevicesPayloadCopyWithImpl<_$_GetDevicesPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDevicesPayloadToJson(
      this,
    );
  }
}

abstract class _GetDevicesPayload implements GetDevicesPayload {
  factory _GetDevicesPayload(
          {@JsonKey(name: 'list') final List<DeviceDto> devices}) =
      _$_GetDevicesPayload;

  factory _GetDevicesPayload.fromJson(Map<String, dynamic> json) =
      _$_GetDevicesPayload.fromJson;

  @override
  @JsonKey(name: 'list')
  List<DeviceDto> get devices;
  @override
  @JsonKey(ignore: true)
  _$$_GetDevicesPayloadCopyWith<_$_GetDevicesPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
