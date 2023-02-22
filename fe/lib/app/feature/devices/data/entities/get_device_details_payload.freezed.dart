// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_device_details_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetDeviceDetailsPayload _$GetDeviceDetailsPayloadFromJson(
    Map<String, dynamic> json) {
  return _GetDeviceDetailsPayload.fromJson(json);
}

/// @nodoc
mixin _$GetDeviceDetailsPayload {
  DeviceDto get device => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDeviceDetailsPayloadCopyWith<GetDeviceDetailsPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDeviceDetailsPayloadCopyWith<$Res> {
  factory $GetDeviceDetailsPayloadCopyWith(GetDeviceDetailsPayload value,
          $Res Function(GetDeviceDetailsPayload) then) =
      _$GetDeviceDetailsPayloadCopyWithImpl<$Res, GetDeviceDetailsPayload>;
  @useResult
  $Res call({DeviceDto device});

  $DeviceDtoCopyWith<$Res> get device;
}

/// @nodoc
class _$GetDeviceDetailsPayloadCopyWithImpl<$Res,
        $Val extends GetDeviceDetailsPayload>
    implements $GetDeviceDetailsPayloadCopyWith<$Res> {
  _$GetDeviceDetailsPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
  }) {
    return _then(_value.copyWith(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as DeviceDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeviceDtoCopyWith<$Res> get device {
    return $DeviceDtoCopyWith<$Res>(_value.device, (value) {
      return _then(_value.copyWith(device: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetDeviceDetailsPayloadCopyWith<$Res>
    implements $GetDeviceDetailsPayloadCopyWith<$Res> {
  factory _$$_GetDeviceDetailsPayloadCopyWith(_$_GetDeviceDetailsPayload value,
          $Res Function(_$_GetDeviceDetailsPayload) then) =
      __$$_GetDeviceDetailsPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeviceDto device});

  @override
  $DeviceDtoCopyWith<$Res> get device;
}

/// @nodoc
class __$$_GetDeviceDetailsPayloadCopyWithImpl<$Res>
    extends _$GetDeviceDetailsPayloadCopyWithImpl<$Res,
        _$_GetDeviceDetailsPayload>
    implements _$$_GetDeviceDetailsPayloadCopyWith<$Res> {
  __$$_GetDeviceDetailsPayloadCopyWithImpl(_$_GetDeviceDetailsPayload _value,
      $Res Function(_$_GetDeviceDetailsPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
  }) {
    return _then(_$_GetDeviceDetailsPayload(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as DeviceDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDeviceDetailsPayload implements _GetDeviceDetailsPayload {
  _$_GetDeviceDetailsPayload({required this.device});

  factory _$_GetDeviceDetailsPayload.fromJson(Map<String, dynamic> json) =>
      _$$_GetDeviceDetailsPayloadFromJson(json);

  @override
  final DeviceDto device;

  @override
  String toString() {
    return 'GetDeviceDetailsPayload(device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetDeviceDetailsPayload &&
            (identical(other.device, device) || other.device == device));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDeviceDetailsPayloadCopyWith<_$_GetDeviceDetailsPayload>
      get copyWith =>
          __$$_GetDeviceDetailsPayloadCopyWithImpl<_$_GetDeviceDetailsPayload>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDeviceDetailsPayloadToJson(
      this,
    );
  }
}

abstract class _GetDeviceDetailsPayload implements GetDeviceDetailsPayload {
  factory _GetDeviceDetailsPayload({required final DeviceDto device}) =
      _$_GetDeviceDetailsPayload;

  factory _GetDeviceDetailsPayload.fromJson(Map<String, dynamic> json) =
      _$_GetDeviceDetailsPayload.fromJson;

  @override
  DeviceDto get device;
  @override
  @JsonKey(ignore: true)
  _$$_GetDeviceDetailsPayloadCopyWith<_$_GetDeviceDetailsPayload>
      get copyWith => throw _privateConstructorUsedError;
}
