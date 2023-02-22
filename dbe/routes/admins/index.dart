import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:users_data_source/users_data_source.dart';
import '../../common/messages.dart';
import '../../delegates/json_delegate.dart';
import '../../models/get_admins_payload.dart';
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

Future<Response> _post(RequestContext context) async {
  final dataSource = context.read<UsersDataSource>();
  final body = await context.request.body();

  if (!JsonDelegate.validate(body)) {
    return ResponseBuilder.missingOrNotValidBody();
  }

  try {
    final requestBody = jsonDecode(body) as Map<String, dynamic>;
    final email = requestBody['email'] as String?;

    if (email != null) {
      await dataSource.addAdmin(email);

      return ResponseBuilder.created();
    } else {
      return ResponseBuilder.missingOrNotValidBody();
    }
  } on AdminAlreadyExisting catch (e) {
    return ResponseBuilder.badRequest(DbeMessages.adminAlreadyExisting(e.email));
  } on AdminEmailNotValid catch (e) {
    return ResponseBuilder.badRequest(DbeMessages.adminEmailNotValid(e.email));
  } catch (e) {
    return ResponseBuilder.internalServerError();
  }
}

Future<Response> _get(RequestContext context) async {
  try {
    final dataSource = context.read<UsersDataSource>();

    final res = await dataSource.getAdmins();
    final payload = GetAdminsPayload(res);

    return ResponseBuilder.ok(payload);
  } catch (e) {
    return ResponseBuilder.internalServerError();
  }
}
