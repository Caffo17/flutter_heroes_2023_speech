import 'package:mongo_dart/mongo_dart.dart';

import '../../commons_ntt_device_dbe.dart';

mixin MongoDbMixin {
  Future<Db> connectToMongoDB(String url) async {
    try {
      final db = await Db.create(url);
      await db.open();

      return db;
    } catch (e) {
      throw DbConnectionException();
    }
  }
}
