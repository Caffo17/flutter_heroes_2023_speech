// ignore_for_file: strict_raw_type

import 'package:dio/dio.dart';

class AppError {
  const AppError({
    required this.code,
    this.response,
  });

  final int code;
  final Response? response;
}
