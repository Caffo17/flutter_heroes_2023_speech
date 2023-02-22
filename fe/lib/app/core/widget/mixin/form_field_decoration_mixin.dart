import 'package:flutter/material.dart';

mixin FormFieldDecorationMixin {
  InputDecoration buildInputDecoration(
    BuildContext context, {
    String? label,
    Widget? suffixIcon,
    bool enabled = true,
  }) {
    return InputDecoration(
      labelText: label,
      labelStyle: Theme.of(context).textTheme.bodyText1,
      errorStyle: Theme.of(context).textTheme.bodyText2?.copyWith(
            color: Theme.of(context).errorColor,
          ),
      suffixIcon: suffixIcon,
      enabled: enabled,
      enabledBorder: _buildBorder(Colors.white),
      focusedBorder: _buildBorder(Theme.of(context).primaryColor),
      disabledBorder: _buildBorder(Colors.white54),
      errorBorder: _buildBorder(Theme.of(context).errorColor),
      focusedErrorBorder: _buildBorder(Theme.of(context).primaryColor),
    );
  }

  InputBorder _buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(color: color),
    );
  }
}
