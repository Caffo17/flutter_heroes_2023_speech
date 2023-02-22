import 'package:flutter/material.dart';
import 'mixin/form_field_decoration_mixin.dart';

class AppTextField extends StatelessWidget with FormFieldDecorationMixin {
  AppTextField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.label,
    this.inputAction = TextInputAction.done,
    required this.validator,
    this.onFieldSubmitted,
    this.obscureText = false,
    this.enabled = true,
    this.suffixIcon,
    this.autoFocus = false,
    this.inputType,
    this.maxLength,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final String label;
  final TextInputAction inputAction;
  final String? Function(String?) validator;
  final ValueChanged<String>? onFieldSubmitted;
  final bool obscureText;
  final bool enabled;
  final Widget? suffixIcon;
  final bool autoFocus;
  final TextInputType? inputType;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      autofocus: autoFocus,
      controller: controller,
      focusNode: focusNode,
      textInputAction: inputAction,
      enabled: enabled,
      validator: validator,
      onFieldSubmitted: onFieldSubmitted,
      obscureText: obscureText,
      keyboardType: inputType,
      style: Theme.of(context).textTheme.bodyText1?.copyWith(
            fontWeight: FontWeight.bold,
          ),
      decoration: buildInputDecoration(
        context,
        label: label,
        suffixIcon: suffixIcon,
        enabled: enabled,
      ),
      maxLength: maxLength,
      buildCounter: _buildCounter,
    );
  }

  Widget? _buildCounter(
    BuildContext context, {
    required int currentLength,
    required int? maxLength,
    required bool isFocused,
  }) {
    if (maxLength != null) {
      return Text(
        '$currentLength/$maxLength',
        style: Theme.of(context).textTheme.caption?.copyWith(
              fontWeight: isFocused ? FontWeight.bold : FontWeight.normal,
            ),
      );
    } else {
      return null;
    }
  }
}
