import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

import '../core/router/app_navigator.dart';
import '../core/widget/dialog/app_dialog.dart';
import '../core/widget/dialog/confirm_dialog.dart';
import '../core/widget/dialog/error_dialog.dart';

Future<void> showSessionExpiredDialog() {
  return _showAppDialog(
    dialog: const ErrorDialog(
      title: 'Session expired',
      action: 'Go to login',
      icon: CommunityMaterialIcons.login,
    ),
  );
}

Future<void> showGenericError() {
  return _showAppDialog(
    dialog: const ErrorDialog(
      title: 'Something wrong',
      action: 'Try again',
      icon: CommunityMaterialIcons.check_bold,
    ),
  );
}

Future<bool?> showLogoutDialog<bool>() {
  return _showAppDialog<bool?>(
    dialog: const ConfirmDialog(
      title: 'Are you sure to logout?',
      action: 'Logout',
      icon: Icons.exit_to_app,
    ),
  );
}

Future<bool?> showDeleteDialog<bool>({
  required String name,
}) {
  return _showAppDialog<bool?>(
    dialog: ConfirmDialog(
      title: 'Are you sure to delete $name?',
      action: 'Delete',
      icon: CommunityMaterialIcons.delete,
      buttonColor: Colors.red,
      buttonOverlayColor: Colors.redAccent,
      buttonTextColor: Colors.white,
    ),
  );
}

Future<bool?> showIncidentDialog<bool>({
  required String name,
}) {
  return _showAppDialog<bool?>(
    dialog: ConfirmDialog(
      title: 'Are you sure to make $name unavailable?',
      action: 'Do it',
      icon: CommunityMaterialIcons.alert_decagram,
      buttonColor: Colors.red,
      buttonOverlayColor: Colors.redAccent,
      buttonTextColor: Colors.white,
    ),
  );
}

Future<bool?> showRepairDialog<bool>({
  required String name,
}) {
  return _showAppDialog<bool?>(
    dialog: ConfirmDialog(
      title: 'Are you sure to repair $name?',
      action: 'Do it',
      icon: CommunityMaterialIcons.shield_check,
      buttonColor: Colors.green,
      buttonOverlayColor: Colors.greenAccent,
      buttonTextColor: Colors.white,
    ),
  );
}

Future<T?> _showAppDialog<T>({
  required AppDialog dialog,
  bool barrierDismissible = true,
}) {
  return AppNavigator().pushOverlay<T>(
    dialog,
    barrierDismissible: barrierDismissible,
  );
}
