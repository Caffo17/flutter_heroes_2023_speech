import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../delegates/jwt_delegate.dart';

bool isAuthenticated(RequestContext context) {
  final headers = context.request.headers;
  final authorization = headers[HttpHeaders.authorizationHeader];

  if (authorization != null) {
    return JwtDelegate.validate(authorization);
  } else {
    return false;
  }
}

bool isAdmin(RequestContext context) {
  final headers = context.request.headers;
  final authorization = headers[HttpHeaders.authorizationHeader];

  if (authorization != null) {
    return JwtDelegate.isUserAdmin(authorization);
  } else {
    return false;
  }
}
