// ignore_for_file: inference_failure_on_function_invocation, cast_nullable_to_non_nullable

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ntt_cubit_arch/ntt_cubit_arch.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../feature/devices/data/api/devices_api.dart';
import '../../feature/devices/domain/model/device.dart';
import '../../feature/devices/presentation/detail/detail_cubit.dart';
import '../../feature/devices/presentation/detail/detail_screen.dart';
import '../../feature/devices/presentation/form/form_cubit.dart';
import '../../feature/devices/presentation/form/form_screen.dart';
import '../../feature/devices/presentation/history/history_screen.dart';
import '../../feature/devices/presentation/list/list_cubit.dart';
import '../../feature/devices/presentation/list/list_screen.dart';
import '../../feature/login/data/api/login_api.dart';
import '../../feature/login/presentation/login_cubit.dart';
import '../../feature/login/presentation/login_screen.dart';
import '../di/di_service.dart';

part 'app_routes.dart';

class AppNavigator extends NttNavigator<AppRoutes> {
  factory AppNavigator() => _instance;

  AppNavigator._(super.navigatorKey);

  static final AppNavigator _instance = AppNavigator._(
    GlobalKey<NavigatorState>(debugLabel: 'app_navigator'),
  );

  void goToLogin() {
    _instance.navigatorKey.currentState!.pushNamedAndRemoveUntil(
      AppRoutes.login.path,
      (route) => true,
    );
  }

  @override
  // ignore: strict_raw_type
  Route? onGenerateRoute(RouteSettings settings) {
    final route = AppRoutes.values.byPath(settings.name ?? '/');

    switch (route) {
      case AppRoutes.login:
        return buildRoute(
          settings,
          BlocProvider(
            create: (_) => LoginCubit(
              _instance,
              injector<LoginApi>(),
              injector<SharedPreferences>(),
            ),
            child: const LoginScreen(),
          ),
        );
      case AppRoutes.deviceList:
        return buildRoute(
          settings,
          BlocProvider(
            create: (_) => DeviceListCubit(
              _instance,
              injector<DevicesApi>(),
            )..fetchDevices(),
            child: const DeviceListScreen(),
          ),
        );
      case AppRoutes.deviceDetail:
        return buildRoute<bool?>(
          settings,
          BlocProvider(
            create: (_) => DeviceDetailCubit(
              _instance,
              injector<DevicesApi>(),
              params: settings.arguments as DeviceDetailsParams,
            )..onInit(),
            child: const DeviceDetailScreen(),
          ),
        );
      case AppRoutes.deviceForm:
        return buildRoute<bool?>(
          settings,
          BlocProvider(
            create: (_) => DeviceFormCubit(
              _instance,
              injector<DevicesApi>(),
              device: settings.arguments as Device?,
            ),
            child: const DeviceFormScreen(),
          ),
        );
      case AppRoutes.deviceHistory:
        final params = settings.arguments! as DeviceHistoryParams;

        return buildRoute(
          settings,
          DeviceHistoryScreen(device: params.device),
        );
    }
  }

  @override
  // ignore: strict_raw_type
  Route buildRoute<T>(
    RouteSettings settings,
    Widget child,
  ) {
    if (Platform.isAndroid) {
      return MaterialPageRoute<T>(
        fullscreenDialog: true,
        settings: settings,
        builder: (_) => child,
      );
    } else {
      return CupertinoPageRoute<T>(
        fullscreenDialog: true,
        settings: settings,
        builder: (_) => child,
      );
    }
  }
}
