// ignore_for_file: strict_raw_type

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ntt_cubit_arch/ntt_cubit_arch.dart';
import 'package:ntt_device_models/ntt_device_models.dart';

import '../../../../core/data/model/api_response.dart';
import '../../../../core/data/model/app_error.dart';
import '../../data/api/devices_api.dart';
import '../../data/entities/get_device_details_payload.dart';
import '../../data/entities/get_devices_payload.dart';
import '../../data/request/create_device_request.dart';
import '../../data/request/delete_device_request.dart';
import '../../data/request/get_device_details_request.dart';
import '../../data/request/get_devices_request.dart';
import '../../data/request/release_device_request.dart';
import '../../data/request/reserve_device_request.dart';
import '../../data/request/update_device_request.dart';
import '../model/device.dart';

class DevicesRepository implements DevicesApi {
  DevicesRepository(
    this.dataSource,
    this._mapper,
  );

  final NttHttpClient<AppError, NttRequest> dataSource;
  final ReversibleMapper<Device, DeviceDto> _mapper;

  @override
  Future<Either<AppError, Map<Os, List<Device>>>> getDeviceList({
    DeviceStatus? status,
    Office? office,
  }) async {
    final res = await dataSource.retrieveData<ApiResponse<GetDevicesPayload>>(
      GetDevicesRequest(
        status: status,
        office: office,
      ),
    );

    return res.fold(
      (l) {
        return Left(l);
      },
      (r) {
        if (r.data != null) {
          return r.data!.maybeMap(
            successful: (v) {
              final map = <Os, List<Device>>{};
              final devices = v.payload.devices.map(_mapper.apply).toList();

              for (final os in Os.values) {
                map[os] = devices.where((e) => e.osType == os).toList();
              }

              return Right(map);
            },
            orElse: () {
              return const Right(<Os, List<Device>>{});
            },
          );
        } else {
          return const Right(<Os, List<Device>>{});
        }
      },
    );
  }

  @override
  Future<Either<AppError, Response<ApiResponse>>> createDevice({required Device device}) async {
    return dataSource.retrieveData<ApiResponse>(
      CreateDeviceRequest(device: _mapper.reverse(device)),
    );
  }

  @override
  Future<Either<AppError, Response<ApiResponse>>> deleteDevice({required String udid}) async {
    return dataSource.retrieveData<ApiResponse>(DeleteDeviceRequest(udid));
  }

  @override
  Future<Either<AppError, Response<ApiResponse>>> updateDevice({required Device device}) async {
    return dataSource.retrieveData<ApiResponse>(
      UpdateDeviceRequest(device: _mapper.reverse(device)),
    );
  }

  @override
  Future<Either<AppError, Response<ApiResponse>>> changeDeviceStatus({
    required Device device,
    required DeviceStatus newStatus,
  }) async {
    /*DeviceStatus v;
    switch (newStatus) {
      /*case DeviceStatus.owned:
        v = DeviceStatus.inUse;
        break;*/
      default:
        v = newStatus;
        break;
    }*/

    return dataSource.retrieveData<ApiResponse>(
      UpdateDeviceRequest(
        device: _mapper.reverse(device),
        newStatus: newStatus,
      ),
    );
  }

  @override
  Future<Either<AppError, Response<ApiResponse>>> reserveDevice({required String udid}) async {
    return dataSource.retrieveData<ApiResponse>(ReserveDeviceRequest(udid));
  }

  @override
  Future<Either<AppError, Response<ApiResponse>>> releaseDevice({required String udid}) async {
    return dataSource.retrieveData<ApiResponse>(ReleaseDeviceRequest(udid));
  }

  @override
  Future<Either<AppError, Device>> getDeviceDetails({required String udid}) async {
    final res = await dataSource
        .retrieveData<ApiResponse<GetDeviceDetailsPayload>>(GetDeviceDetailsRequest(udid));

    return res.fold(
      Left.new,
      (r) {
        return r.data!.maybeMap(
          successful: (v) {
            final device = _mapper.apply(v.payload.device);
            return Right(device);
          },
          orElse: () {
            return const Left(AppError(code: 404));
          },
        );
      },
    );
  }
}
