import 'package:dart_frog/dart_frog.dart';
import 'package:devices_data_source/devices_data_source.dart';
import 'package:mongo_db_devices_data_source/mongo_db_devices_data_source.dart';

import '../../../../common/middleware.dart';
import '../../../../config/config.dart';
import '../../../../utils/response_builder.dart';

const _dataSource = MongoDbDevicesDataSource(mongoDbUrl, devicesCollection);

Handler middleware(Handler handler) {
  return (context) async {
    if (!isAuthenticated(context)) {
      return ResponseBuilder.unauthorized();
    }

    final f = handler.use(requestLogger()).use(provider<DevicesDataSource>((_) => _dataSource));
    final response = f(context);

    return response;
  };
}
