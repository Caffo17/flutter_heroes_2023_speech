import 'package:dartz/dartz.dart';
import 'package:ntt_cubit_arch/ntt_cubit_arch.dart';

import '../../../../core/data/model/api_response.dart';
import '../../../../core/data/model/app_error.dart';
import '../../data/api/login_api.dart';
import '../../data/entities/login_payload.dart';
import '../../data/entities/user_dto.dart';
import '../../data/request/login_request.dart';
import '../model/user.dart';
import '../model/user_session.dart';

class LoginRepository implements LoginApi {
  LoginRepository(
    this.dataSource,
    this._mapper,
  );

  final NttHttpClient<AppError, NttRequest> dataSource;
  final Mapper<User, UserDto?> _mapper;

  @override
  Future<Either<AppError, UserSession>> authenticate(String username, String psw) async {
    final res = await dataSource.retrieveData<ApiResponse<LoginPayload>>(
      LoginRequest(username: username, psw: psw),
    );

    return res.fold(
      Left.new,
      (r) {
        if (r.data != null) {
          return r.data!.maybeMap(
            successful: (v) {
              final user = _mapper.apply(v.payload.user);

              if (user is LoggedUser) {
                return Right(UserSession.alive(user: user, token: v.payload.token));
              } else {
                return Right(UserSession.notAlive());
              }
            },
            orElse: () {
              return Left(AppError(code: 999, response: r));
            },
          );
        } else {
          return Right(UserSession.notAlive());
        }
      },
    );
  }
}
