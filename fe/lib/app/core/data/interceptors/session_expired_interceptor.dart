import 'package:dio/dio.dart';

import '../../../utils/dialogs.dart';
import '../../../utils/session_manager.dart';
import '../../router/app_navigator.dart';

class SessionExpiredInterceptor extends Interceptor {
  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response != null && err.response!.statusCode == 401) {
      if (SessionManager().isAlive) {
        SessionManager().reset();
        await showSessionExpiredDialog();
        AppNavigator().goToLogin();
        handler.reject(err);
      }
    }

    handler.next(err);
  }
}
