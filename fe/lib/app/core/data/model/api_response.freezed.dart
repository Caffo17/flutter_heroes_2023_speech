// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T payload) successful,
    required TResult Function() successfulWithoutPayload,
    required TResult Function(ApiError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T payload)? successful,
    TResult? Function()? successfulWithoutPayload,
    TResult? Function(ApiError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T payload)? successful,
    TResult Function()? successfulWithoutPayload,
    TResult Function(ApiError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccesfulApiResponse<T> value) successful,
    required TResult Function(_SuccesfulWithoutPayloadApiResponse<T> value)
        successfulWithoutPayload,
    required TResult Function(_ErrorApiResponse<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuccesfulApiResponse<T> value)? successful,
    TResult? Function(_SuccesfulWithoutPayloadApiResponse<T> value)?
        successfulWithoutPayload,
    TResult? Function(_ErrorApiResponse<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccesfulApiResponse<T> value)? successful,
    TResult Function(_SuccesfulWithoutPayloadApiResponse<T> value)?
        successfulWithoutPayload,
    TResult Function(_ErrorApiResponse<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<T> value, $Res Function(ApiResponse<T>) then) =
      _$ApiResponseCopyWithImpl<T, $Res, ApiResponse<T>>;
}

/// @nodoc
class _$ApiResponseCopyWithImpl<T, $Res, $Val extends ApiResponse<T>>
    implements $ApiResponseCopyWith<T, $Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SuccesfulApiResponseCopyWith<T, $Res> {
  factory _$$_SuccesfulApiResponseCopyWith(_$_SuccesfulApiResponse<T> value,
          $Res Function(_$_SuccesfulApiResponse<T>) then) =
      __$$_SuccesfulApiResponseCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T payload});
}

/// @nodoc
class __$$_SuccesfulApiResponseCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$_SuccesfulApiResponse<T>>
    implements _$$_SuccesfulApiResponseCopyWith<T, $Res> {
  __$$_SuccesfulApiResponseCopyWithImpl(_$_SuccesfulApiResponse<T> _value,
      $Res Function(_$_SuccesfulApiResponse<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = freezed,
  }) {
    return _then(_$_SuccesfulApiResponse<T>(
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_SuccesfulApiResponse<T> implements _SuccesfulApiResponse<T> {
  _$_SuccesfulApiResponse({required this.payload});

  @override
  final T payload;

  @override
  String toString() {
    return 'ApiResponse<$T>.successful(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccesfulApiResponse<T> &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccesfulApiResponseCopyWith<T, _$_SuccesfulApiResponse<T>>
      get copyWith =>
          __$$_SuccesfulApiResponseCopyWithImpl<T, _$_SuccesfulApiResponse<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T payload) successful,
    required TResult Function() successfulWithoutPayload,
    required TResult Function(ApiError error) error,
  }) {
    return successful(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T payload)? successful,
    TResult? Function()? successfulWithoutPayload,
    TResult? Function(ApiError error)? error,
  }) {
    return successful?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T payload)? successful,
    TResult Function()? successfulWithoutPayload,
    TResult Function(ApiError error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccesfulApiResponse<T> value) successful,
    required TResult Function(_SuccesfulWithoutPayloadApiResponse<T> value)
        successfulWithoutPayload,
    required TResult Function(_ErrorApiResponse<T> value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuccesfulApiResponse<T> value)? successful,
    TResult? Function(_SuccesfulWithoutPayloadApiResponse<T> value)?
        successfulWithoutPayload,
    TResult? Function(_ErrorApiResponse<T> value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccesfulApiResponse<T> value)? successful,
    TResult Function(_SuccesfulWithoutPayloadApiResponse<T> value)?
        successfulWithoutPayload,
    TResult Function(_ErrorApiResponse<T> value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class _SuccesfulApiResponse<T> implements ApiResponse<T> {
  factory _SuccesfulApiResponse({required final T payload}) =
      _$_SuccesfulApiResponse<T>;

  T get payload;
  @JsonKey(ignore: true)
  _$$_SuccesfulApiResponseCopyWith<T, _$_SuccesfulApiResponse<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccesfulWithoutPayloadApiResponseCopyWith<T, $Res> {
  factory _$$_SuccesfulWithoutPayloadApiResponseCopyWith(
          _$_SuccesfulWithoutPayloadApiResponse<T> value,
          $Res Function(_$_SuccesfulWithoutPayloadApiResponse<T>) then) =
      __$$_SuccesfulWithoutPayloadApiResponseCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_SuccesfulWithoutPayloadApiResponseCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res,
        _$_SuccesfulWithoutPayloadApiResponse<T>>
    implements _$$_SuccesfulWithoutPayloadApiResponseCopyWith<T, $Res> {
  __$$_SuccesfulWithoutPayloadApiResponseCopyWithImpl(
      _$_SuccesfulWithoutPayloadApiResponse<T> _value,
      $Res Function(_$_SuccesfulWithoutPayloadApiResponse<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SuccesfulWithoutPayloadApiResponse<T>
    implements _SuccesfulWithoutPayloadApiResponse<T> {
  _$_SuccesfulWithoutPayloadApiResponse();

  @override
  String toString() {
    return 'ApiResponse<$T>.successfulWithoutPayload()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccesfulWithoutPayloadApiResponse<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T payload) successful,
    required TResult Function() successfulWithoutPayload,
    required TResult Function(ApiError error) error,
  }) {
    return successfulWithoutPayload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T payload)? successful,
    TResult? Function()? successfulWithoutPayload,
    TResult? Function(ApiError error)? error,
  }) {
    return successfulWithoutPayload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T payload)? successful,
    TResult Function()? successfulWithoutPayload,
    TResult Function(ApiError error)? error,
    required TResult orElse(),
  }) {
    if (successfulWithoutPayload != null) {
      return successfulWithoutPayload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccesfulApiResponse<T> value) successful,
    required TResult Function(_SuccesfulWithoutPayloadApiResponse<T> value)
        successfulWithoutPayload,
    required TResult Function(_ErrorApiResponse<T> value) error,
  }) {
    return successfulWithoutPayload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuccesfulApiResponse<T> value)? successful,
    TResult? Function(_SuccesfulWithoutPayloadApiResponse<T> value)?
        successfulWithoutPayload,
    TResult? Function(_ErrorApiResponse<T> value)? error,
  }) {
    return successfulWithoutPayload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccesfulApiResponse<T> value)? successful,
    TResult Function(_SuccesfulWithoutPayloadApiResponse<T> value)?
        successfulWithoutPayload,
    TResult Function(_ErrorApiResponse<T> value)? error,
    required TResult orElse(),
  }) {
    if (successfulWithoutPayload != null) {
      return successfulWithoutPayload(this);
    }
    return orElse();
  }
}

abstract class _SuccesfulWithoutPayloadApiResponse<T>
    implements ApiResponse<T> {
  factory _SuccesfulWithoutPayloadApiResponse() =
      _$_SuccesfulWithoutPayloadApiResponse<T>;
}

/// @nodoc
abstract class _$$_ErrorApiResponseCopyWith<T, $Res> {
  factory _$$_ErrorApiResponseCopyWith(_$_ErrorApiResponse<T> value,
          $Res Function(_$_ErrorApiResponse<T>) then) =
      __$$_ErrorApiResponseCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiError error});

  $ApiErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$_ErrorApiResponseCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$_ErrorApiResponse<T>>
    implements _$$_ErrorApiResponseCopyWith<T, $Res> {
  __$$_ErrorApiResponseCopyWithImpl(_$_ErrorApiResponse<T> _value,
      $Res Function(_$_ErrorApiResponse<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ErrorApiResponse<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiError,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiErrorCopyWith<$Res> get error {
    return $ApiErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_ErrorApiResponse<T> implements _ErrorApiResponse<T> {
  _$_ErrorApiResponse({required this.error});

  @override
  final ApiError error;

  @override
  String toString() {
    return 'ApiResponse<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorApiResponse<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorApiResponseCopyWith<T, _$_ErrorApiResponse<T>> get copyWith =>
      __$$_ErrorApiResponseCopyWithImpl<T, _$_ErrorApiResponse<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T payload) successful,
    required TResult Function() successfulWithoutPayload,
    required TResult Function(ApiError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T payload)? successful,
    TResult? Function()? successfulWithoutPayload,
    TResult? Function(ApiError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T payload)? successful,
    TResult Function()? successfulWithoutPayload,
    TResult Function(ApiError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccesfulApiResponse<T> value) successful,
    required TResult Function(_SuccesfulWithoutPayloadApiResponse<T> value)
        successfulWithoutPayload,
    required TResult Function(_ErrorApiResponse<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuccesfulApiResponse<T> value)? successful,
    TResult? Function(_SuccesfulWithoutPayloadApiResponse<T> value)?
        successfulWithoutPayload,
    TResult? Function(_ErrorApiResponse<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccesfulApiResponse<T> value)? successful,
    TResult Function(_SuccesfulWithoutPayloadApiResponse<T> value)?
        successfulWithoutPayload,
    TResult Function(_ErrorApiResponse<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorApiResponse<T> implements ApiResponse<T> {
  factory _ErrorApiResponse({required final ApiError error}) =
      _$_ErrorApiResponse<T>;

  ApiError get error;
  @JsonKey(ignore: true)
  _$$_ErrorApiResponseCopyWith<T, _$_ErrorApiResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
