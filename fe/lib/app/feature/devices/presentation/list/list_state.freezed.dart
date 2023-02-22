// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeviceListState {
  Map<String, dynamic> get filters => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Map<Os, List<Device>> devicesMap, Map<String, dynamic> filters)
        $default, {
    required TResult Function(Map<String, dynamic> filters) loading,
    required TResult Function(Map<String, dynamic> filters) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            Map<Os, List<Device>> devicesMap, Map<String, dynamic> filters)?
        $default, {
    TResult? Function(Map<String, dynamic> filters)? loading,
    TResult? Function(Map<String, dynamic> filters)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            Map<Os, List<Device>> devicesMap, Map<String, dynamic> filters)?
        $default, {
    TResult Function(Map<String, dynamic> filters)? loading,
    TResult Function(Map<String, dynamic> filters)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FullDeviceListState value) $default, {
    required TResult Function(LoadingDeviceListState value) loading,
    required TResult Function(ErrorDeviceListState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(FullDeviceListState value)? $default, {
    TResult? Function(LoadingDeviceListState value)? loading,
    TResult? Function(ErrorDeviceListState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FullDeviceListState value)? $default, {
    TResult Function(LoadingDeviceListState value)? loading,
    TResult Function(ErrorDeviceListState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceListStateCopyWith<DeviceListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceListStateCopyWith<$Res> {
  factory $DeviceListStateCopyWith(
          DeviceListState value, $Res Function(DeviceListState) then) =
      _$DeviceListStateCopyWithImpl<$Res, DeviceListState>;
  @useResult
  $Res call({Map<String, dynamic> filters});
}

/// @nodoc
class _$DeviceListStateCopyWithImpl<$Res, $Val extends DeviceListState>
    implements $DeviceListStateCopyWith<$Res> {
  _$DeviceListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
  }) {
    return _then(_value.copyWith(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FullDeviceListStateCopyWith<$Res>
    implements $DeviceListStateCopyWith<$Res> {
  factory _$$FullDeviceListStateCopyWith(_$FullDeviceListState value,
          $Res Function(_$FullDeviceListState) then) =
      __$$FullDeviceListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<Os, List<Device>> devicesMap, Map<String, dynamic> filters});
}

/// @nodoc
class __$$FullDeviceListStateCopyWithImpl<$Res>
    extends _$DeviceListStateCopyWithImpl<$Res, _$FullDeviceListState>
    implements _$$FullDeviceListStateCopyWith<$Res> {
  __$$FullDeviceListStateCopyWithImpl(
      _$FullDeviceListState _value, $Res Function(_$FullDeviceListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devicesMap = null,
    Object? filters = null,
  }) {
    return _then(_$FullDeviceListState(
      devicesMap: null == devicesMap
          ? _value._devicesMap
          : devicesMap // ignore: cast_nullable_to_non_nullable
              as Map<Os, List<Device>>,
      filters: null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$FullDeviceListState implements FullDeviceListState {
  _$FullDeviceListState(
      {final Map<Os, List<Device>> devicesMap = const <Os, List<Device>>{},
      final Map<String, dynamic> filters = const <String, dynamic>{}})
      : _devicesMap = devicesMap,
        _filters = filters;

  final Map<Os, List<Device>> _devicesMap;
  @override
  @JsonKey()
  Map<Os, List<Device>> get devicesMap {
    if (_devicesMap is EqualUnmodifiableMapView) return _devicesMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_devicesMap);
  }

  final Map<String, dynamic> _filters;
  @override
  @JsonKey()
  Map<String, dynamic> get filters {
    if (_filters is EqualUnmodifiableMapView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_filters);
  }

  @override
  String toString() {
    return 'DeviceListState(devicesMap: $devicesMap, filters: $filters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FullDeviceListState &&
            const DeepCollectionEquality()
                .equals(other._devicesMap, _devicesMap) &&
            const DeepCollectionEquality().equals(other._filters, _filters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_devicesMap),
      const DeepCollectionEquality().hash(_filters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FullDeviceListStateCopyWith<_$FullDeviceListState> get copyWith =>
      __$$FullDeviceListStateCopyWithImpl<_$FullDeviceListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Map<Os, List<Device>> devicesMap, Map<String, dynamic> filters)
        $default, {
    required TResult Function(Map<String, dynamic> filters) loading,
    required TResult Function(Map<String, dynamic> filters) error,
  }) {
    return $default(devicesMap, filters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            Map<Os, List<Device>> devicesMap, Map<String, dynamic> filters)?
        $default, {
    TResult? Function(Map<String, dynamic> filters)? loading,
    TResult? Function(Map<String, dynamic> filters)? error,
  }) {
    return $default?.call(devicesMap, filters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            Map<Os, List<Device>> devicesMap, Map<String, dynamic> filters)?
        $default, {
    TResult Function(Map<String, dynamic> filters)? loading,
    TResult Function(Map<String, dynamic> filters)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(devicesMap, filters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FullDeviceListState value) $default, {
    required TResult Function(LoadingDeviceListState value) loading,
    required TResult Function(ErrorDeviceListState value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(FullDeviceListState value)? $default, {
    TResult? Function(LoadingDeviceListState value)? loading,
    TResult? Function(ErrorDeviceListState value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FullDeviceListState value)? $default, {
    TResult Function(LoadingDeviceListState value)? loading,
    TResult Function(ErrorDeviceListState value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class FullDeviceListState implements DeviceListState {
  factory FullDeviceListState(
      {final Map<Os, List<Device>> devicesMap,
      final Map<String, dynamic> filters}) = _$FullDeviceListState;

  Map<Os, List<Device>> get devicesMap;
  @override
  Map<String, dynamic> get filters;
  @override
  @JsonKey(ignore: true)
  _$$FullDeviceListStateCopyWith<_$FullDeviceListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingDeviceListStateCopyWith<$Res>
    implements $DeviceListStateCopyWith<$Res> {
  factory _$$LoadingDeviceListStateCopyWith(_$LoadingDeviceListState value,
          $Res Function(_$LoadingDeviceListState) then) =
      __$$LoadingDeviceListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> filters});
}

/// @nodoc
class __$$LoadingDeviceListStateCopyWithImpl<$Res>
    extends _$DeviceListStateCopyWithImpl<$Res, _$LoadingDeviceListState>
    implements _$$LoadingDeviceListStateCopyWith<$Res> {
  __$$LoadingDeviceListStateCopyWithImpl(_$LoadingDeviceListState _value,
      $Res Function(_$LoadingDeviceListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
  }) {
    return _then(_$LoadingDeviceListState(
      filters: null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$LoadingDeviceListState implements LoadingDeviceListState {
  _$LoadingDeviceListState(
      {final Map<String, dynamic> filters = const <String, dynamic>{}})
      : _filters = filters;

  final Map<String, dynamic> _filters;
  @override
  @JsonKey()
  Map<String, dynamic> get filters {
    if (_filters is EqualUnmodifiableMapView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_filters);
  }

  @override
  String toString() {
    return 'DeviceListState.loading(filters: $filters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingDeviceListState &&
            const DeepCollectionEquality().equals(other._filters, _filters));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_filters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingDeviceListStateCopyWith<_$LoadingDeviceListState> get copyWith =>
      __$$LoadingDeviceListStateCopyWithImpl<_$LoadingDeviceListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Map<Os, List<Device>> devicesMap, Map<String, dynamic> filters)
        $default, {
    required TResult Function(Map<String, dynamic> filters) loading,
    required TResult Function(Map<String, dynamic> filters) error,
  }) {
    return loading(filters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            Map<Os, List<Device>> devicesMap, Map<String, dynamic> filters)?
        $default, {
    TResult? Function(Map<String, dynamic> filters)? loading,
    TResult? Function(Map<String, dynamic> filters)? error,
  }) {
    return loading?.call(filters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            Map<Os, List<Device>> devicesMap, Map<String, dynamic> filters)?
        $default, {
    TResult Function(Map<String, dynamic> filters)? loading,
    TResult Function(Map<String, dynamic> filters)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(filters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FullDeviceListState value) $default, {
    required TResult Function(LoadingDeviceListState value) loading,
    required TResult Function(ErrorDeviceListState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(FullDeviceListState value)? $default, {
    TResult? Function(LoadingDeviceListState value)? loading,
    TResult? Function(ErrorDeviceListState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FullDeviceListState value)? $default, {
    TResult Function(LoadingDeviceListState value)? loading,
    TResult Function(ErrorDeviceListState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingDeviceListState implements DeviceListState {
  factory LoadingDeviceListState({final Map<String, dynamic> filters}) =
      _$LoadingDeviceListState;

  @override
  Map<String, dynamic> get filters;
  @override
  @JsonKey(ignore: true)
  _$$LoadingDeviceListStateCopyWith<_$LoadingDeviceListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorDeviceListStateCopyWith<$Res>
    implements $DeviceListStateCopyWith<$Res> {
  factory _$$ErrorDeviceListStateCopyWith(_$ErrorDeviceListState value,
          $Res Function(_$ErrorDeviceListState) then) =
      __$$ErrorDeviceListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> filters});
}

/// @nodoc
class __$$ErrorDeviceListStateCopyWithImpl<$Res>
    extends _$DeviceListStateCopyWithImpl<$Res, _$ErrorDeviceListState>
    implements _$$ErrorDeviceListStateCopyWith<$Res> {
  __$$ErrorDeviceListStateCopyWithImpl(_$ErrorDeviceListState _value,
      $Res Function(_$ErrorDeviceListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
  }) {
    return _then(_$ErrorDeviceListState(
      filters: null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$ErrorDeviceListState implements ErrorDeviceListState {
  _$ErrorDeviceListState(
      {final Map<String, dynamic> filters = const <String, dynamic>{}})
      : _filters = filters;

  final Map<String, dynamic> _filters;
  @override
  @JsonKey()
  Map<String, dynamic> get filters {
    if (_filters is EqualUnmodifiableMapView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_filters);
  }

  @override
  String toString() {
    return 'DeviceListState.error(filters: $filters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorDeviceListState &&
            const DeepCollectionEquality().equals(other._filters, _filters));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_filters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorDeviceListStateCopyWith<_$ErrorDeviceListState> get copyWith =>
      __$$ErrorDeviceListStateCopyWithImpl<_$ErrorDeviceListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Map<Os, List<Device>> devicesMap, Map<String, dynamic> filters)
        $default, {
    required TResult Function(Map<String, dynamic> filters) loading,
    required TResult Function(Map<String, dynamic> filters) error,
  }) {
    return error(filters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            Map<Os, List<Device>> devicesMap, Map<String, dynamic> filters)?
        $default, {
    TResult? Function(Map<String, dynamic> filters)? loading,
    TResult? Function(Map<String, dynamic> filters)? error,
  }) {
    return error?.call(filters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            Map<Os, List<Device>> devicesMap, Map<String, dynamic> filters)?
        $default, {
    TResult Function(Map<String, dynamic> filters)? loading,
    TResult Function(Map<String, dynamic> filters)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(filters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FullDeviceListState value) $default, {
    required TResult Function(LoadingDeviceListState value) loading,
    required TResult Function(ErrorDeviceListState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(FullDeviceListState value)? $default, {
    TResult? Function(LoadingDeviceListState value)? loading,
    TResult? Function(ErrorDeviceListState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FullDeviceListState value)? $default, {
    TResult Function(LoadingDeviceListState value)? loading,
    TResult Function(ErrorDeviceListState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorDeviceListState implements DeviceListState {
  factory ErrorDeviceListState({final Map<String, dynamic> filters}) =
      _$ErrorDeviceListState;

  @override
  Map<String, dynamic> get filters;
  @override
  @JsonKey(ignore: true)
  _$$ErrorDeviceListStateCopyWith<_$ErrorDeviceListState> get copyWith =>
      throw _privateConstructorUsedError;
}
