// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:devices_data_source/devices_data_source.dart';
import 'package:mongo_dart/mongo_dart.dart';

/// {@template mongo_db_devices_data_source}
/// Implementation for DevicesDataSource interface. MongoDB database implementation.
/// {@endtemplate}
class MongoDbDevicesDataSource with MongoDbMixin implements DevicesDataSource {
  /// {@macro mongo_db_devices_data_source}
  const MongoDbDevicesDataSource(String url, String collection)
      : _mongoDbUrl = url,
        _devicesCollection = collection;

  final String _mongoDbUrl;
  final String _devicesCollection;

  Future<bool> _deviceExists(Db db, String udid) async {
    final result = await db.collection(_devicesCollection).findOne(where.eq('udid', udid));

    return result != null;
  }

  @override
  Future<DeviceDto> addDevice(DeviceDto model) async {
    final db = await connectToMongoDB(_mongoDbUrl);

    final udidExisting = await _deviceExists(db, model.udid);

    if (!udidExisting) {
      final writeResult = await db.collection(_devicesCollection).insertOne(model.toJson());

      if (writeResult.isSuccess) {
        final created = DeviceDto.fromJson(writeResult.document!);
        await db.close();

        return created;
      } else {
        await db.close();
        throw DbWritingException();
      }
    } else {
      await db.close();
      throw DeviceAlreadyExisting(model.udid);
    }
  }

  @override
  Future<bool> deleteDevice(String udid) async {
    final db = await connectToMongoDB(_mongoDbUrl);
    final udidExisting = await _deviceExists(db, udid);

    if (udidExisting) {
      final writeResult = await db.collection(_devicesCollection).deleteOne(where.eq('udid', udid));
      await db.close();

      return writeResult.isSuccess;
    } else {
      throw DeviceNotExisting(udid);
    }
  }

  @override
  Future<DeviceDto> editDevice(String udid, DeviceDto model) async {
    final db = await connectToMongoDB(_mongoDbUrl);
    final udidExisting = await _deviceExists(db, udid);

    if (udidExisting) {
      try {
        await db.collection(_devicesCollection).update(
              where.eq('udid', udid),
              model.toJson(),
            );
        await db.close();

        final edited = await getDevice(udid);

        return edited;
      } catch (e) {
        throw DbWritingException();
      }
    } else {
      await db.close();
      throw DeviceNotExisting(udid);
    }
  }

  @override
  Future<List<DeviceDto>> getAll({
    DeviceStatus? status,
    Office? office,
    Os? os,
  }) async {
    final db = await connectToMongoDB(_mongoDbUrl);
    final list = <DeviceDto>[];

    await db.collection(_devicesCollection).find({
      if (status != null) 'status': status.name,
      if (office != null) 'office': office.name,
      if (os != null) 'os': os.name,
    }).forEach((e) {
      final d = DeviceDto.fromJson(e);
      list.add(d);
    });
    await db.close();

    return list;
  }

  @override
  Future<DeviceDto> getDevice(String udid) async {
    final db = await connectToMongoDB(_mongoDbUrl);
    final device = await db.collection(_devicesCollection).findOne(where.eq('udid', udid));

    await db.close();

    if (device != null) {
      return DeviceDto.fromJson(device);
    } else {
      throw DeviceNotExisting(udid);
    }
  }
}
