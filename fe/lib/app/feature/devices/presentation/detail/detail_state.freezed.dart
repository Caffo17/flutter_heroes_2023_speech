// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeviceDetailState {
  String get deviceId => throw _privateConstructorUsedError;
  String get deviceName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String deviceId, String deviceName) loading,
    required TResult Function(String deviceId, String deviceName, Device device)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String deviceId, String deviceName)? loading,
    TResult? Function(String deviceId, String deviceName, Device device)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String deviceId, String deviceName)? loading,
    TResult Function(String deviceId, String deviceName, Device device)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingDeviceDetailState value) loading,
    required TResult Function(LoadedDeviceDetailState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingDeviceDetailState value)? loading,
    TResult? Function(LoadedDeviceDetailState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingDeviceDetailState value)? loading,
    TResult Function(LoadedDeviceDetailState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceDetailStateCopyWith<DeviceDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceDetailStateCopyWith<$Res> {
  factory $DeviceDetailStateCopyWith(
          DeviceDetailState value, $Res Function(DeviceDetailState) then) =
      _$DeviceDetailStateCopyWithImpl<$Res, DeviceDetailState>;
  @useResult
  $Res call({String deviceId, String deviceName});
}

/// @nodoc
class _$DeviceDetailStateCopyWithImpl<$Res, $Val extends DeviceDetailState>
    implements $DeviceDetailStateCopyWith<$Res> {
  _$DeviceDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? deviceName = null,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceName: null == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadingDeviceDetailStateCopyWith<$Res>
    implements $DeviceDetailStateCopyWith<$Res> {
  factory _$$LoadingDeviceDetailStateCopyWith(_$LoadingDeviceDetailState value,
          $Res Function(_$LoadingDeviceDetailState) then) =
      __$$LoadingDeviceDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String deviceId, String deviceName});
}

/// @nodoc
class __$$LoadingDeviceDetailStateCopyWithImpl<$Res>
    extends _$DeviceDetailStateCopyWithImpl<$Res, _$LoadingDeviceDetailState>
    implements _$$LoadingDeviceDetailStateCopyWith<$Res> {
  __$$LoadingDeviceDetailStateCopyWithImpl(_$LoadingDeviceDetailState _value,
      $Res Function(_$LoadingDeviceDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? deviceName = null,
  }) {
    return _then(_$LoadingDeviceDetailState(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceName: null == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadingDeviceDetailState implements LoadingDeviceDetailState {
  _$LoadingDeviceDetailState(
      {required this.deviceId, required this.deviceName});

  @override
  final String deviceId;
  @override
  final String deviceName;

  @override
  String toString() {
    return 'DeviceDetailState.loading(deviceId: $deviceId, deviceName: $deviceName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingDeviceDetailState &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deviceId, deviceName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingDeviceDetailStateCopyWith<_$LoadingDeviceDetailState>
      get copyWith =>
          __$$LoadingDeviceDetailStateCopyWithImpl<_$LoadingDeviceDetailState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String deviceId, String deviceName) loading,
    required TResult Function(String deviceId, String deviceName, Device device)
        loaded,
  }) {
    return loading(deviceId, deviceName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String deviceId, String deviceName)? loading,
    TResult? Function(String deviceId, String deviceName, Device device)?
        loaded,
  }) {
    return loading?.call(deviceId, deviceName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String deviceId, String deviceName)? loading,
    TResult Function(String deviceId, String deviceName, Device device)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(deviceId, deviceName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingDeviceDetailState value) loading,
    required TResult Function(LoadedDeviceDetailState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingDeviceDetailState value)? loading,
    TResult? Function(LoadedDeviceDetailState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingDeviceDetailState value)? loading,
    TResult Function(LoadedDeviceDetailState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingDeviceDetailState implements DeviceDetailState {
  factory LoadingDeviceDetailState(
      {required final String deviceId,
      required final String deviceName}) = _$LoadingDeviceDetailState;

  @override
  String get deviceId;
  @override
  String get deviceName;
  @override
  @JsonKey(ignore: true)
  _$$LoadingDeviceDetailStateCopyWith<_$LoadingDeviceDetailState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedDeviceDetailStateCopyWith<$Res>
    implements $DeviceDetailStateCopyWith<$Res> {
  factory _$$LoadedDeviceDetailStateCopyWith(_$LoadedDeviceDetailState value,
          $Res Function(_$LoadedDeviceDetailState) then) =
      __$$LoadedDeviceDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String deviceId, String deviceName, Device device});

  $DeviceCopyWith<$Res> get device;
}

/// @nodoc
class __$$LoadedDeviceDetailStateCopyWithImpl<$Res>
    extends _$DeviceDetailStateCopyWithImpl<$Res, _$LoadedDeviceDetailState>
    implements _$$LoadedDeviceDetailStateCopyWith<$Res> {
  __$$LoadedDeviceDetailStateCopyWithImpl(_$LoadedDeviceDetailState _value,
      $Res Function(_$LoadedDeviceDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? deviceName = null,
    Object? device = null,
  }) {
    return _then(_$LoadedDeviceDetailState(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceName: null == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$LoadedDeviceDetailState implements LoadedDeviceDetailState {
  _$LoadedDeviceDetailState(
      {required this.deviceId, required this.deviceName, required this.device});

  @override
  final String deviceId;
  @override
  final String deviceName;
  @override
  final Device device;

  @override
  String toString() {
    return 'DeviceDetailState.loaded(deviceId: $deviceId, deviceName: $deviceName, device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedDeviceDetailState &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deviceId, deviceName, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedDeviceDetailStateCopyWith<_$LoadedDeviceDetailState> get copyWith =>
      __$$LoadedDeviceDetailStateCopyWithImpl<_$LoadedDeviceDetailState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String deviceId, String deviceName) loading,
    required TResult Function(String deviceId, String deviceName, Device device)
        loaded,
  }) {
    return loaded(deviceId, deviceName, device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String deviceId, String deviceName)? loading,
    TResult? Function(String deviceId, String deviceName, Device device)?
        loaded,
  }) {
    return loaded?.call(deviceId, deviceName, device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String deviceId, String deviceName)? loading,
    TResult Function(String deviceId, String deviceName, Device device)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(deviceId, deviceName, device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingDeviceDetailState value) loading,
    required TResult Function(LoadedDeviceDetailState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingDeviceDetailState value)? loading,
    TResult? Function(LoadedDeviceDetailState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingDeviceDetailState value)? loading,
    TResult Function(LoadedDeviceDetailState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedDeviceDetailState implements DeviceDetailState {
  factory LoadedDeviceDetailState(
      {required final String deviceId,
      required final String deviceName,
      required final Device device}) = _$LoadedDeviceDetailState;

  @override
  String get deviceId;
  @override
  String get deviceName;
  Device get device;
  @override
  @JsonKey(ignore: true)
  _$$LoadedDeviceDetailStateCopyWith<_$LoadedDeviceDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
