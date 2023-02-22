// ignore_for_file: strict_raw_type

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ntt_device_models/ntt_device_models.dart';
import '../../../../core/data/model/api_response.dart';
import '../../../../core/data/model/app_error.dart';
import '../../domain/model/device.dart';

abstract class DevicesApi {
  Future<Either<AppError, Map<Os, List<Device>>>> getDeviceList({
    DeviceStatus? status,
    Office? office,
  });

  Future<Either<AppError, Device>> getDeviceDetails({required String udid});

  Future<Either<AppError, Response<ApiResponse>>> createDevice({required Device device});

  Future<Either<AppError, Response<ApiResponse>>> updateDevice({required Device device});

  Future<Either<AppError, Response<ApiResponse>>> deleteDevice({required String udid});

  Future<Either<AppError, Response<ApiResponse>>> changeDeviceStatus({
    required Device device,
    required DeviceStatus newStatus,
  });

  Future<Either<AppError, Response<ApiResponse>>> reserveDevice({required String udid});

  Future<Either<AppError, Response<ApiResponse>>> releaseDevice({required String udid});
}
