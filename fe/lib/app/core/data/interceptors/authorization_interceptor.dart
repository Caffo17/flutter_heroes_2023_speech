import 'package:dio/dio.dart';

import '../../../utils/session_manager.dart';

class AuthorizationInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (SessionManager().isAlive) {
      final token = SessionManager().token;
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }
}
