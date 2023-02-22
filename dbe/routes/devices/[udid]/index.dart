import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:devices_data_source/devices_data_source.dart';

import '../../../common/messages.dart';
import '../../../delegates/json_delegate.dart';
import '../../../models/device_payload.dart';
import '../../../utils/response_builder.dart';

FutureOr<Response> onRequest(RequestContext context, String udid) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return _get(context, udid);
    case HttpMethod.put:
      return _put(context, udid);
    case HttpMethod.delete:
      return _delete(context, udid);
    case HttpMethod.post:
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

Future<Response> _get(RequestContext context, String udid) async {
  try {
    final dataSource = context.read<DevicesDataSource>();

    final device = await dataSource.getDevice(udid);
    final payload = DevicePayload(device);

    return ResponseBuilder.ok(payload);
  } on DeviceNotExisting catch (e) {
    return ResponseBuilder.notFound(DbeMessages.deviceNotExisting(e.udid));
  } catch (e) {
    return ResponseBuilder.internalServerError();
  }
}

Future<Response> _put(RequestContext context, String udid) async {
  try {
    final dataSource = context.read<DevicesDataSource>();
    final body = await context.request.body();
    late Map<String, dynamic> requestBody;

    if (!JsonDelegate.validate(body)) {
      return ResponseBuilder.missingOrNotValidBody();
    }

    requestBody = jsonDecode(body) as Map<String, dynamic>;

    final device = await dataSource.getDevice(udid);
    final j = device.toJson();
    j[DeviceModelDelegate.nameField] = requestBody[DeviceModelDelegate.nameField] ?? device.name;
    j[DeviceModelDelegate.statusField] =
        requestBody[DeviceModelDelegate.statusField] ?? device.status.name;
    j[DeviceModelDelegate.officeField] =
        requestBody[DeviceModelDelegate.officeField] ?? device.office.name;
    j[DeviceModelDelegate.accountEmailField] =
        requestBody[DeviceModelDelegate.accountEmailField] ?? device.accountEmail;
    j[DeviceModelDelegate.accountPasswordField] =
        requestBody[DeviceModelDelegate.accountPasswordField] ?? device.accountPassword;
    j[DeviceModelDelegate.pinField] = requestBody[DeviceModelDelegate.pinField] ?? device.pin;
    j[DeviceModelDelegate.osField] = requestBody[DeviceModelDelegate.osField] ?? device.os.name;
    j[DeviceModelDelegate.osVersionField] =
        requestBody[DeviceModelDelegate.osVersionField] ?? device.osVersion;

    final checkFields = DeviceModelDelegate.checkFields(j);
    if (checkFields.isNotEmpty) {
      return ResponseBuilder.badRequest(DbeMessages.notValidFields(checkFields.toString()));
    }

    String? name = requestBody[DeviceModelDelegate.nameField];
    DeviceStatus? status = getEnumValue<DeviceStatus>(
      requestBody[DeviceModelDelegate.statusField],
      DeviceStatus.values.byName,
    );
    Office? office = getEnumValue<Office>(
      requestBody[DeviceModelDelegate.officeField],
      Office.values.byName,
    );
    String? accountEmail = requestBody[DeviceModelDelegate.accountEmailField];
    String? accountPassword = requestBody[DeviceModelDelegate.accountPasswordField];
    String? pin = requestBody[DeviceModelDelegate.pinField];
    Os? osType = getEnumValue<Os>(
      requestBody[DeviceModelDelegate.osField],
      Os.values.byName,
    );
    String? osVersion = requestBody[DeviceModelDelegate.osVersionField];

    final edited = device.copyWith(
      name: name ?? device.name,
      status: status ?? device.status,
      office: office ?? device.office,
      accountEmail: accountEmail ?? device.accountEmail,
      accountPassword: accountPassword ?? device.accountPassword,
      pin: pin ?? device.pin,
      os: osType ?? device.os,
      osVersion: osVersion ?? device.osVersion,
    );

    final result = await dataSource.editDevice(udid, edited);
    final payload = DevicePayload(result);

    return ResponseBuilder.ok(payload);
  } on DeviceNotExisting catch (e) {
    return ResponseBuilder.notFound(DbeMessages.deviceNotExisting(e.udid));
  } catch (e) {
    return ResponseBuilder.internalServerError();
  }
}

Future<Response> _delete(RequestContext context, String udid) async {
  try {
    final dataSource = context.read<DevicesDataSource>();
    await dataSource.deleteDevice(udid);

    return ResponseBuilder.ok();
  } on DeviceNotExisting catch (e) {
    return ResponseBuilder.notFound(DbeMessages.deviceNotExisting(e.udid));
  } catch (e) {
    return Response.json(statusCode: HttpStatus.internalServerError);
  }
}
