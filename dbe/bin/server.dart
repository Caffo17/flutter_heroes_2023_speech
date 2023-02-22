// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, implicit_dynamic_list_literal

import 'dart:io';

import 'package:dart_frog/dart_frog.dart';


import '../routes/index.dart' as index;
import '../routes/login/index.dart' as login_index;
import '../routes/devices/index.dart' as devices_index;
import '../routes/devices/[udid]/index.dart' as devices_$udid_index;
import '../routes/devices/[udid]/reserve/index.dart' as devices_$udid_reserve_index;
import '../routes/devices/[udid]/release/index.dart' as devices_$udid_release_index;
import '../routes/admins/index.dart' as admins_index;
import '../routes/admins/[email]/index.dart' as admins_$email_index;

import '../routes/login/_middleware.dart' as login_middleware;
import '../routes/devices/_middleware.dart' as devices_middleware;
import '../routes/devices/[udid]/_middleware.dart' as devices_$udid_middleware;
import '../routes/devices/[udid]/reserve/_middleware.dart' as devices_$udid_reserve_middleware;
import '../routes/devices/[udid]/release/_middleware.dart' as devices_$udid_release_middleware;
import '../routes/admins/_middleware.dart' as admins_middleware;
import '../routes/admins/[email]/_middleware.dart' as admins_$email_middleware;

void main() => createServer();

Future<HttpServer> createServer() async {
  final ip = InternetAddress.anyIPv4;
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final handler = Cascade().add(createStaticFileHandler()).add(buildRootHandler()).handler;
  final server = await serve(handler, ip, port);
  print('\x1B[92m✓\x1B[0m Running on http://${server.address.host}:${server.port}');
  return server;
}

Handler buildRootHandler() {
  final pipeline = const Pipeline();
  final router = Router()
    ..mount('/admins/<email>', (context,email,) => buildAdmins$emailHandler(email,)(context))
    ..mount('/admins', (context) => buildAdminsHandler()(context))
    ..mount('/devices/<udid>/release', (context,udid,) => buildDevices$udidReleaseHandler(udid,)(context))
    ..mount('/devices/<udid>/reserve', (context,udid,) => buildDevices$udidReserveHandler(udid,)(context))
    ..mount('/devices/<udid>', (context,udid,) => buildDevices$udidHandler(udid,)(context))
    ..mount('/devices', (context) => buildDevicesHandler()(context))
    ..mount('/login', (context) => buildLoginHandler()(context))
    ..mount('/', (context) => buildHandler()(context));
  return pipeline.addHandler(router);
}

Handler buildAdmins$emailHandler(String email,) {
  final pipeline = const Pipeline().addMiddleware(admins_middleware.middleware).addMiddleware(admins_$email_middleware.middleware);
  final router = Router()
    ..all('/', (context) => admins_$email_index.onRequest(context,email,));
  return pipeline.addHandler(router);
}

Handler buildAdminsHandler() {
  final pipeline = const Pipeline().addMiddleware(admins_middleware.middleware);
  final router = Router()
    ..all('/', (context) => admins_index.onRequest(context,));
  return pipeline.addHandler(router);
}

Handler buildDevices$udidReleaseHandler(String udid,) {
  final pipeline = const Pipeline().addMiddleware(devices_middleware.middleware).addMiddleware(devices_$udid_middleware.middleware).addMiddleware(devices_$udid_release_middleware.middleware);
  final router = Router()
    ..all('/', (context) => devices_$udid_release_index.onRequest(context,udid,));
  return pipeline.addHandler(router);
}

Handler buildDevices$udidReserveHandler(String udid,) {
  final pipeline = const Pipeline().addMiddleware(devices_middleware.middleware).addMiddleware(devices_$udid_middleware.middleware).addMiddleware(devices_$udid_reserve_middleware.middleware);
  final router = Router()
    ..all('/', (context) => devices_$udid_reserve_index.onRequest(context,udid,));
  return pipeline.addHandler(router);
}

Handler buildDevices$udidHandler(String udid,) {
  final pipeline = const Pipeline().addMiddleware(devices_middleware.middleware).addMiddleware(devices_$udid_middleware.middleware);
  final router = Router()
    ..all('/', (context) => devices_$udid_index.onRequest(context,udid,));
  return pipeline.addHandler(router);
}

Handler buildDevicesHandler() {
  final pipeline = const Pipeline().addMiddleware(devices_middleware.middleware);
  final router = Router()
    ..all('/', (context) => devices_index.onRequest(context,));
  return pipeline.addHandler(router);
}

Handler buildLoginHandler() {
  final pipeline = const Pipeline().addMiddleware(login_middleware.middleware);
  final router = Router()
    ..all('/', (context) => login_index.onRequest(context,));
  return pipeline.addHandler(router);
}

Handler buildHandler() {
  final pipeline = const Pipeline();
  final router = Router()
    ..all('/', (context) => index.onRequest(context,));
  return pipeline.addHandler(router);
}
