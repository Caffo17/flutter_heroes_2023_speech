import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../navigator/ntt_navigator.dart';

abstract class NttCubit<S> extends Cubit<S> {
  NttCubit(
    super.initialState,
    this.navigator,
  );

  final NttNavigator navigator;

  void showLoader([Widget? child]) {
    navigator.pushLoader(child);
  }

  void hideLoader() {
    navigator.popLoader();
  }

  Future<T?> showAlert<T>(Widget child) {
    return navigator.pushOverlay(child);
  }
}
