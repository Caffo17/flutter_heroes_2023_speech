// ignore_for_file: avoid_redundant_argument_values

import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:ntt_cubit_arch/ntt_cubit_arch.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../feature/devices/data/api/devices_api.dart';
import '../../feature/devices/domain/mapper/device_mapper.dart';
import '../../feature/devices/domain/repository/devices_repository.dart';
import '../../feature/login/data/api/login_api.dart';
import '../../feature/login/domain/mapper/user_mapper.dart';
import '../../feature/login/domain/repository/login_repository.dart';
import '../../utils/session_manager.dart';
import '../data/app_http_client.dart';
import '../data/interceptors/authorization_interceptor.dart';
import '../data/interceptors/error_interceptor.dart';
import '../data/interceptors/session_expired_interceptor.dart';
import '../data/model/app_error.dart';

final GetIt injector = GetIt.instance;

Future<void> init() async {
  final prefs = await SharedPreferences.getInstance();
  injector
    ..registerSingleton<SharedPreferences>(prefs)
    ..registerSingleton<NttHttpClient<AppError, NttRequest>>(
      AppHttpClient(
        useLogInterceptor: false,
        interceptors: [
          SessionExpiredInterceptor(),
          AuthorizationInterceptor(),
          ErrorInterceptor(),
          PrettyDioLogger(
            request: kDebugMode,
            requestHeader: kDebugMode,
            requestBody: kDebugMode,
            responseHeader: kDebugMode,
            responseBody: kDebugMode,
            compact: false,
            error: kDebugMode,
            logPrint: (obj) => log('$obj', name: 'API'),
          ),
        ],
      ),
    )
    ..registerFactory<LoginApi>(
      () => LoginRepository(
        injector(),
        UserMapper(),
      ),
    )
    ..registerFactory<DevicesApi>(
      () => DevicesRepository(
        injector(),
        DeviceMapper(SessionManager()),
      ),
    );
}

SharedPreferences get prefs => injector.get<SharedPreferences>();
