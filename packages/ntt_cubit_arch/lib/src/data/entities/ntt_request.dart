// ignore_for_file: type_annotate_public_apis

import 'package:dio/dio.dart';
import '../../../ntt_cubit_arch.dart';

dynamic defaultDecoder(dynamic) => null;

/// Superclass for all the request of the application.
abstract class NttRequest {
  NttRequest({
    required String baseUrl,
    required this.endPoint,
    required this.method,
    dynamic Function(dynamic)? responseDecoder,
  })  : baseUrl = baseUrl.endsWith('/')
            ? baseUrl.replaceRange(baseUrl.lastIndexOf('/'), null, '')
            : baseUrl,
        decoder = responseDecoder ?? defaultDecoder;

  /// Base url of the request.
  final String baseUrl;

  /// Endpoint of the request.
  final String endPoint;

  /// Enums that indicates the rest method of the request.
  final HttpMethod method;

  /// Function that decode the raw response in a domain entity.
  final dynamic Function(dynamic) decoder;

  /// Headers of the request.
  /// Default value => {"content-type":"application/json; charset=utf-8", "accept":"application/json; charset=utf-8"}.
  Map<String, String> get headers => {
        Headers.contentTypeHeader: Headers.jsonContentType,
        Headers.acceptHeader: Headers.jsonContentType,
      };

  /// Body of the request.
  /// Default value => empty map.
  Map<String, dynamic> get body => {};

  /// Query parameters of the request.
  /// Default value => empty map.
  Map<String, dynamic> get queryParameters => {};

  /// Response type of the request.
  /// Default value => json.
  ResponseType get responseType => ResponseType.json;

  /// Complete url of the request.
  String get completeUrl => '$baseUrl/$endPoint';

  /// Indicates the millis of the receive timeout.
  int get receiveTimeout => 10000;

  /// Indicates the millis of the send timeout.
  int get sendTimeout => 10000;
}
