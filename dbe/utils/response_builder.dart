import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../common/messages.dart';
import '../models/dbe_payload.dart';
import '../models/dbe_response.dart';

class ResponseBuilder {
  const ResponseBuilder._();

  static Response ok([DbePayload? payload]) {
    return Response.json(
      statusCode: HttpStatus.ok,
      body: DbeResponse.successful(payload).toJson(),
    );
  }

  static Response created([DbePayload? payload]) {
    return Response.json(
      statusCode: HttpStatus.created,
      body: DbeResponse.successful(payload).toJson(),
    );
  }

  static Response badRequest(String message) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: DbeResponse.error(message).toJson(),
    );
  }

  static Response notFound(String message) {
    return Response.json(
      statusCode: HttpStatus.notFound,
      body: DbeResponse.error(message).toJson(),
    );
  }

  static Response missingOrNotValidBody() {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: DbeResponse.error(DbeMessages.notValidBody).toJson(),
    );
  }

  static Response unauthorized() {
    return Response(statusCode: HttpStatus.unauthorized);
  }

  static Response forbidden() {
    return Response.json(statusCode: HttpStatus.forbidden);
  }

  static Response internalServerError() {
    return Response.json(statusCode: HttpStatus.internalServerError);
  }
}
