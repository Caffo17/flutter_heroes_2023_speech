import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:devices_data_source/devices_data_source.dart';
import '../../common/messages.dart';
import '../../delegates/json_delegate.dart';
import '../../models/device_payload.dart';
import '../../models/get_devices_payload.dart';
import '../../utils/response_builder.dart';

FutureOr<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return _get(context);
    case HttpMethod.post:
      return _post(context);
    case HttpMethod.delete:
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.put:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

Future<Response> _get(RequestContext context) async {
  try {
    final dataSource = context.read<DevicesDataSource>();

    final queryParameters = context.request.uri.queryParameters;

    final status = getEnumValue<DeviceStatus>(
      queryParameters[DeviceModelDelegate.statusField],
      DeviceStatus.values.byName,
    );
    final office = getEnumValue<Office>(
      queryParameters[DeviceModelDelegate.officeField],
      Office.values.byName,
    );
    final os = getEnumValue<Os>(
      queryParameters[DeviceModelDelegate.osField],
      Os.values.byName,
    );

    final list = await dataSource.getAll(
      status: status,
      office: office,
      os: os,
    );
    final payload = GetDevicesPayload(list);

    return ResponseBuilder.ok(payload);
  } catch (e) {
    return ResponseBuilder.internalServerError();
  }
}

Future<Response> _post(RequestContext context) async {
  try {
    final dataSource = context.read<DevicesDataSource>();
    final body = await context.request.body();
    late Map<String, dynamic> requestBody;

    if (!JsonDelegate.validate(body)) {
      return ResponseBuilder.missingOrNotValidBody();
    } else {
      requestBody = jsonDecode(body) as Map<String, dynamic>;
      final missingFields = DeviceModelDelegate.checkMissingFields(requestBody);

      if (missingFields.isNotEmpty) {
        return ResponseBuilder.badRequest(DbeMessages.missingFields(missingFields.toString()));
      } else {
        final checkFields = DeviceModelDelegate.checkFields(requestBody);
        if (checkFields.isNotEmpty) {
          return ResponseBuilder.badRequest(DbeMessages.notValidFields(checkFields.toString()));
        }
      }
    }

    final model = DeviceDto.fromJson(requestBody);

    final res = await dataSource.addDevice(model);
    final payload = DevicePayload(res);

    return ResponseBuilder.created(payload);
  } on DeviceAlreadyExisting catch (e) {
    return ResponseBuilder.badRequest(DbeMessages.deviceAlreadyExisting(e.udid));
  } catch (e) {
    return ResponseBuilder.internalServerError();
  }
}
