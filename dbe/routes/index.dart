import 'package:dart_frog/dart_frog.dart';
import 'package:shelf_swagger_ui/shelf_swagger_ui.dart' as shelf_ui;
import 'package:shelf/shelf.dart' as shelf;

Future<Response> onRequest(RequestContext context) async {
  final path = '/public/device_dbe.yaml';
  final handler = shelf_ui.SwaggerUI(path, title: 'Device DBE');
  final req = context.request;
  shelf.Request request = shelf.Request(
    req.method.value,
    req.uri,
    headers: req.headers,
    url: req.url,
    body: await req.body(),
  );

  final res = await handler.call(request);
  List<int> bytes = [];
  res.read().listen((event) {
    bytes.addAll(event);
  });

  while (bytes.length < (res.contentLength ?? 0)) {
    await Future.delayed(const Duration(milliseconds: 1));
  }

  Response response = Response.bytes(
    statusCode: res.statusCode,
    headers: res.headers,
    body: bytes,
  );

  return response;
}
