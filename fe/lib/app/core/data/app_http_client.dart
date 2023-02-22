import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:ntt_cubit_arch/ntt_cubit_arch.dart';
import 'model/app_error.dart';

class AppHttpClient<R extends NttRequest> extends NttHttpClient<AppError, R> {
  AppHttpClient({
    super.interceptors,
    super.useLogInterceptor,
    super.baseOptions,
  });

  @override
  AppError manageDioError(
    DioError e,
    StackTrace stacktrace, {
    dynamic Function(dynamic)? decoder,
  }) {
    debugPrint(e.toString());
    debugPrintStack(stackTrace: stacktrace);
    return AppError(
      code: e.response?.statusCode ?? 999,
      response: e.response,
    );
  }

  @override
  AppError manageError(Object e, StackTrace stacktrace) {
    debugPrint(e.toString());
    debugPrintStack(stackTrace: stacktrace);
    return const AppError(code: 998);
  }

  @override
  AppError manageException(Exception e, StackTrace stacktrace) {
    debugPrint(e.toString());
    debugPrintStack(stackTrace: stacktrace);
    return const AppError(code: 997);
  }
}
