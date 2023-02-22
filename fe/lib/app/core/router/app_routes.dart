part of 'app_navigator.dart';

enum AppRoutes with NttRoute {
  login('/'),
  deviceList('/list'),
  deviceDetail('/list/device'),
  deviceHistory('/list/device/history'),
  deviceForm('list/form');

  const AppRoutes(this.path);

  @override
  final String path;
}
