// ignore_for_file: strict_raw_type, inference_failure_on_function_invocation

import 'package:flutter/material.dart';

mixin NttRoute on Enum {
  String get path;
}

extension NttRouteByPath<T extends NttRoute> on Iterable<T> {
  T byPath(String path) {
    for (final value in this) {
      if (value.path == path) return value;
    }
    throw ArgumentError.value(path, 'name', 'No enum value with that name');
  }

  Map<String, T> asNameMap() => <String, T>{for (var value in this) value.name: value};
}

abstract class NttNavigator<R extends NttRoute> {
  NttNavigator(
    this.navigatorKey, {
    this.defaultLoader = const Center(
      child: CircularProgressIndicator(),
    ),
  });

  @protected
  bool isLoaderShown = false;

  final GlobalKey<NavigatorState> navigatorKey;
  final Widget defaultLoader;

  Route? onGenerateRoute(RouteSettings settings);

  Route buildRoute<T>(
    RouteSettings settings,
    Widget child,
  );

  Future<T?> pushOverlay<T>(
    Widget child, {
    bool barrierDismissible = false,
    Color? barrierColor = Colors.black45,
  }) async {
    return showDialog(
      context: navigatorKey.currentState!.overlay!.context,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      builder: (context) => child,
    );
  }

  void pushLoader([Widget? child]) {
    if (!isLoaderShown) {
      isLoaderShown = true;
      pushOverlay(
        WillPopScope(
          onWillPop: () async => false,
          child: child ?? defaultLoader,
        ),
        barrierColor: Colors.black45,
        barrierDismissible: false,
      );
    }
  }

  Future<void> popLoader() async {
    if (isLoaderShown) {
      navigatorKey.currentState!.pop();
      isLoaderShown = false;
    }
  }

  Future<T?> pushNamed<T>(R route, [Object? arguments]) async {
    return navigatorKey.currentState!.pushNamed(route.path, arguments: arguments);
  }

  void pop<T>([T? result]) {
    return navigatorKey.currentState!.pop<T>(result);
  }

  Future<T?> pushAndReplaceNamed<T, TO>(R route, [Object? arguments]) async {
    return navigatorKey.currentState!.pushReplacementNamed(route.path, arguments: arguments);
  }

  void popUntil<T>(String destination, [T? result]) {
    return navigatorKey.currentState!.popUntil((route) => route.settings.name == destination);
  }

  Future<T?> popAndPushNamed<T, TO>(R route, [Object? arguments]) async {
    return navigatorKey.currentState!.popAndPushNamed(route.path, arguments: arguments);
  }
}
