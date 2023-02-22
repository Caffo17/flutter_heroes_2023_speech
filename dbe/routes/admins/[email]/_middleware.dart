import 'package:dart_frog/dart_frog.dart';
import 'package:flutter_heroes_users_data_source/flutter_heroes_users_data_source.dart';
import 'package:users_data_source/users_data_source.dart';

import '../../../common/middleware.dart';
import '../../../config/config.dart';
import '../../../utils/response_builder.dart';

final _dataSource = FlutterHeroesUsersDataSource(mongoDbUrl, adminsCollection);

Handler middleware(Handler handler) {
  return (context) async {
    if (!isAuthenticated(context)) {
      return ResponseBuilder.unauthorized();
    }

    final method = context.request.method;

    if (method == HttpMethod.delete) {
      if (!isAdmin(context)) {
        return ResponseBuilder.forbidden();
      }
    }

    final f = handler.use(requestLogger()).use(provider<UsersDataSource>((_) => _dataSource));
    final response = f(context);

    return response;
  };
}
