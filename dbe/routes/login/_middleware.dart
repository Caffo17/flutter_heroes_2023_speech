import 'package:dart_frog/dart_frog.dart';
import 'package:flutter_heroes_users_data_source/flutter_heroes_users_data_source.dart';
import 'package:users_data_source/users_data_source.dart';

import '../../config/config.dart';

final _dataSource = FlutterHeroesUsersDataSource(mongoDbUrl, adminsCollection);

Handler middleware(Handler handler) {
  return handler.use(requestLogger()).use(provider<UsersDataSource>((_) => _dataSource));
}
