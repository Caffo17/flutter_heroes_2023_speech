// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:ntt_device_models/ntt_device_models.dart';

/// {@template devices_data_source}
/// A generic interface for managing devices.
/// {@endtemplate}
abstract class DevicesDataSource {
  /// {@macro devices_data_source}
  const DevicesDataSource();

  Future<List<DeviceDto>> getAll({
    DeviceStatus? status,
    Office? office,
    Os? os,
  });

  Future<DeviceDto> getDevice(String udid);

  Future<DeviceDto> editDevice(String udid, DeviceDto model);

  Future<bool> deleteDevice(String udid);

  Future<DeviceDto> addDevice(DeviceDto model);
}
