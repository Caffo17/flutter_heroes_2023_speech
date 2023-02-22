import 'package:dio/dio.dart';
import '../../../utils/dialogs.dart';

class ErrorInterceptor extends Interceptor {
  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response != null && err.response!.statusCode != 401) {
      await showGenericError();
    }

    handler.next(err);
  }
}
