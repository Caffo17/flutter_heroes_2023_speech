import 'package:freezed_annotation/freezed_annotation.dart';
import 'api_error.dart';

part 'api_response.freezed.dart';

@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  factory ApiResponse.successful({required T payload}) = _SuccesfulApiResponse;

  factory ApiResponse.successfulWithoutPayload() = _SuccesfulWithoutPayloadApiResponse;

  factory ApiResponse.error({required ApiError error}) = _ErrorApiResponse;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) genericFromJson,
  ) {
    if (json['success']) {
      if (json['payload'] != null) {
        return ApiResponse.successful(payload: genericFromJson(json['payload']));
      } else {
        return ApiResponse.successfulWithoutPayload();
      }
    } else {
      return ApiResponse.error(error: ApiError.fromJson(json['message']));
    }
  }
}
