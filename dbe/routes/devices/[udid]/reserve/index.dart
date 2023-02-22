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
    final userEmail = jwtPayload['email'];

    final reservation = ReservationDto(
      userId: userId as int,
      startedAt: DateTime.now().toIso8601String(),
      userEmail: userEmail as String,
    );

    final device = await dataSource.getDevice(udid);

    if (device.status == DeviceStatus.available && device.reservation == null) {
      final reserved = device.copyWith(
        reservation: reservation,
        status: DeviceStatus.inUse,
      );

      final edited = await dataSource.editDevice(udid, reserved);

      final payload = DevicePayload(edited);
      return ResponseBuilder.ok(payload);
    } else {
      return ResponseBuilder.badRequest(DbeMessages.deviceNotReservable(udid));
    }
  } on DeviceNotExisting catch (e) {
    return ResponseBuilder.notFound(DbeMessages.deviceNotExisting(e.udid));
  } catch (e) {
    return ResponseBuilder.internalServerError();
  }
}
