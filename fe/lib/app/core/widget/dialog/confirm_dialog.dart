import 'package:flutter/material.dart';

import '../../router/app_navigator.dart';
import '../app_button.dart';
import 'app_dialog.dart';

class ConfirmDialog extends AppDialog {
  const ConfirmDialog({
    super.key,
    required this.title,
    required this.action,
    this.buttonColor,
    this.buttonOverlayColor,
    this.buttonTextColor,
    this.icon,
  });

  final String title;
  final String action;
  final Color? buttonColor;
  final Color? buttonOverlayColor;
  final Color? buttonTextColor;
  final IconData? icon;

  @override
  Widget buildDialog(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: 80),
        if (icon != null)
          AppButton.icon(
            icon: icon!,
            backgroundColor: buttonColor,
            overlayColor: buttonOverlayColor,
            textColor: buttonTextColor,
            onPressed: () => AppNavigator().pop(true),
            child: Text(action),
          )
        else
          AppButton(
            backgroundColor: buttonColor,
            overlayColor: buttonOverlayColor,
            textColor: buttonTextColor,
            onPressed: () => AppNavigator().pop(true),
            child: Text(action),
          ),
      ],
    );
  }
}
