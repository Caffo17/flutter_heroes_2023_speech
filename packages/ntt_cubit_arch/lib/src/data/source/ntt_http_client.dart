// ignore_for_file: inference_failure_on_function_invocation, strict_raw_type

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../entities/ntt_request.dart';
import 'ntt_data_source.dart';

abstract class NttHttpClient<E, R extends NttRequest> extends NttDataSource<R> {
  NttHttpClient({
    BaseOptions? baseOptions,
    List<Interceptor>? interceptors,
    bool useLogInterceptor = true,
  }) {
    setup(
      baseOptions,
      interceptors,
      useLogInterceptor: useLogInterceptor,
    );
  }

  late Dio _dioClient;

  Interceptors get interceptors => _dioClient.interceptors;

  Dio get client => _dioClient;

  /// Initializes the `Dio` client.
  /// Default content type => 'application/json; charset=utf-8';
  /// Default response type => json;
  /// It adds also a `LogInterceptor` to the client to print request and response.
  void setup(
    BaseOptions? baseOptions,
    List<Interceptor>? interceptors, {
    bool useLogInterceptor = true,
  }) {
    _dioClient = Dio(baseOptions);

    _dioClient.interceptors.addAll(interceptors ?? []);
    if (useLogInterceptor) {
      _dioClient.interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
        ),
      );
    }
  }

  /// It returns an `Response<T>` if the api call works correctly.
  /// It returns an `AppError` if the api call go wrong in someway.
  @override
  Future<Either<E, Response<T>>> retrieveData<T>(R request) async {
    try {
      final options = Options(
        headers: request.headers,
        method: request.method.name,
        receiveDataWhenStatusError: true,
        receiveTimeout: request.receiveTimeout,
        sendTimeout: request.sendTimeout,
        responseType: request.responseType,
      );

      final response = await _dioClient.request(
        request.completeUrl,
        data: request.body,
        options: options,
        queryParameters: request.queryParameters,
      );

      final decoder = request.decoder;
      final data = decoder(response.data) as T;

      return Right(_createResponse<T>(response, data));
    } on DioError catch (e, stacktrace) {
      return Left(manageDioError(e, stacktrace));
    } on Exception catch (e, stacktrace) {
      return Left(manageException(e, stacktrace));
    } catch (e, stacktrace) {
      return Left(manageError(e, stacktrace));
    }
  }

  Response<T> _createResponse<T>(Response response, T data) {
    return Response<T>(
      data: data,
      headers: response.headers,
      isRedirect: response.isRedirect,
      requestOptions: response.requestOptions,
      redirects: response.redirects,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      extra: response.extra,
    );
  }

  /// Manage a `DioError`.
  /// A DioError is throw when an api call fail.
  /// E.g. http status error such as 400 or 500.
  E manageDioError(DioError e, StackTrace stacktrace);

  /// Manage an `Exception`.
  /// E.g. wrong parsing from api data to application's model.
  E manageException(Exception e, StackTrace stacktrace);

  /// Manage an error not catch by `manageDioError` and `manageException`.
  E manageError(Object e, StackTrace stacktrace);
}
