import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:users_data_source/users_data_source.dart';

import '../../common/messages.dart';
import '../../delegates/json_delegate.dart';
import '../../delegates/jwt_delegate.dart';
import '../../models/login_payload.dart';
import '../../utils/response_builder.dart';

FutureOr<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.post:
      return _post(context);
    case HttpMethod.get:
    case HttpMethod.delete:
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.put:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

Future<Response> _post(RequestContext context) async {
  try {
    final dataSource = context.read<UsersDataSource>();
    final body = await context.request.body();

    if (!JsonDelegate.validate(body)) {
      return ResponseBuilder.missingOrNotValidBody();
    }

    final requestBody = jsonDecode(body) as Map<String, dynamic>;

    final username = requestBody['username'] as String?;
    final password = requestBody['password'] as String?;

    if (username != null && password != null) {
      final user = await dataSource.login(username, password);
      final payload = LoginPayload(
        user: user,
        jwt: JwtDelegate.generate(user),
      );

      return ResponseBuilder.ok(payload);
    } else {
      return ResponseBuilder.badRequest(DbeMessages.notValidCredentials);
    }
  } catch (e) {
    return ResponseBuilder.badRequest(DbeMessages.notValidCredentials);
  }
}
