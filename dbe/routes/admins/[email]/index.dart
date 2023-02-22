import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:users_data_source/users_data_source.dart';
import '../../../common/messages.dart';
import '../../../utils/response_builder.dart';

FutureOr<Response> onRequest(RequestContext context, String email) async {
  switch (context.request.method) {
    case HttpMethod.delete:
      return _delete(context, email);
    case HttpMethod.get:
    case HttpMethod.post:
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.put:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

Future<Response> _delete(RequestContext context, String email) async {
  try {
    final dataSource = context.read<UsersDataSource>();

    await dataSource.removeAdmin(email);
    return ResponseBuilder.ok();
  } on AdminNotExisting catch (e) {
    return ResponseBuilder.badRequest(DbeMessages.adminNotExisting(e.email));
  } on AdminEmailNotValid catch (e) {
    return ResponseBuilder.badRequest(DbeMessages.adminEmailNotValid(e.email));
  } catch (e) {
    return ResponseBuilder.internalServerError();
  }
}
