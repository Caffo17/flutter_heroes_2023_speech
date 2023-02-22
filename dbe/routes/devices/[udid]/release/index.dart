import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:devices_data_source/devices_data_source.dart';

import '../../../../common/messages.dart';
import '../../../../delegates/jwt_delegate.dart';
import '../../../../models/device_payload.dart';
import '../../../../utils/response_builder.dart';

FutureOr<Response> onRequest(RequestContext context, String udid) async {
  switch (context.request.method) {
    case HttpMethod.post:
      return _post(context, udid);
    case HttpMethod.get:
    case HttpMethod.put:
    case HttpMethod.delete:
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

Future<Response> _post(RequestContext context, String udid) async {
  try {
    final dataSource = context.read<DevicesDataSource>();

    final headers = context.request.headers;
    final authorization = headers[HttpHeaders.authorizationHeader];
    final jwtPayload = JwtDelegate.getPayload(authorization!);

    final userId = jwtPayload['userId'];

    final device = await dataSource.getDevice(udid);

    if (device.reservation != null &&
        device.reservation!.userId == userId &&
        device.status == DeviceStatus.inUse) {
      final history = [
        ...device.useHistory,
        device.reservation!.copyWith(finishedAt: DateTime.now().toIso8601String()),
      ];
      final released = device.copyWith(
        reservation: null,
        useHistory: history,
        status: DeviceStatus.available,
      );

      final edited = await dataSource.editDevice(udid, released);
      final payload = DevicePayload(edited);

      return ResponseBuilder.ok(payload);
    } else {
      return ResponseBuilder.badRequest(DbeMessages.deviceNotReleasable(udid));
    }
  } on DeviceNotExisting catch (e) {
    return ResponseBuilder.notFound(DbeMessages.deviceNotExisting(e.udid));
  } catch (e) {
    return ResponseBuilder.internalServerError();
  }
}
