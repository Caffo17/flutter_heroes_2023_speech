import 'package:dartz/dartz.dart';
import '../../../../core/data/model/app_error.dart';
import '../../domain/model/user_session.dart';

abstract class LoginApi {
  Future<Either<AppError, UserSession>> authenticate(String username, String psw);
}
