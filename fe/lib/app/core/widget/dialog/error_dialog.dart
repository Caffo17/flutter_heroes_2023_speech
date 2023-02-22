// ignore_for_file: inference_failure_on_generic_invocation

import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

import '../../router/app_navigator.dart';
import '../app_button.dart';
import 'app_dialog.dart';

class ErrorDialog extends AppDialog {
  const ErrorDialog({
    super.key,
    required this.title,
    required this.action,
    required this.icon,
  });

  final String title;
  final String action;
  final IconData icon;

  @override
  Widget buildDialog(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          CommunityMaterialIcons.alert_outline,
          color: Colors.white,
          size: 48,
        ),
        const SizedBox(height: 20),
        Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: 80),
        AppButton.icon(
          icon: icon,
          onPressed: AppNavigator().pop,
          child: Text(action),
        ),
      ],
    );
  }
}
