import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  factory AppButton({
    VoidCallback? onPressed,
    Color? backgroundColor,
    Color? overlayColor,
    Color? textColor,
    Size? minimumSize,
    OutlinedBorder? shape,
    bool isLoading = false,
    required Widget child,
  }) {
    return AppButton._(
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      overlayColor: overlayColor,
      textColor: textColor,
      minimumSize: minimumSize,
      shape: shape,
      isLoading: isLoading,
      child: child,
    );
  }

  factory AppButton.icon({
    VoidCallback? onPressed,
    Color? backgroundColor,
    Color? overlayColor,
    Color? textColor,
    Size? minimumSize,
    OutlinedBorder? shape,
    required Widget child,
    required IconData icon,
    bool isLoading = false,
  }) {
    return AppButton._(
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      overlayColor: overlayColor,
      textColor: textColor,
      minimumSize: minimumSize,
      shape: shape,
      icon: icon,
      isLoading: isLoading,
      child: child,
    );
  }

  const AppButton._({
    this.onPressed,
    this.backgroundColor,
    this.overlayColor,
    required this.child,
    this.shape,
    this.minimumSize,
    this.textColor,
    this.icon,
    this.isLoading = false,
  });

  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? overlayColor;
  final Color? textColor;
  final Widget child;
  final Size? minimumSize;
  final OutlinedBorder? shape;
  final IconData? icon;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon),
        style: style,
        label: child,
      );
    } else {
      return AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn,
        width: !isLoading ? null : 68.0,
        child: ElevatedButton(
          onPressed: onPressed,
          style: style,
          child: !isLoading ? child : const Center(child: CircularProgressIndicator()),
        ),
      );
    }
  }

  ButtonStyle get style {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        backgroundColor ?? Colors.white,
      ),
      overlayColor: MaterialStateProperty.all(
        overlayColor ?? Colors.blue,
      ),
      shape: MaterialStateProperty.all(
        shape ??
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
      ),
      minimumSize: MaterialStateProperty.all(
        minimumSize ?? const Size(double.maxFinite, 48),
      ),
      foregroundColor: MaterialStateProperty.all(
        textColor ?? Colors.black,
      ),
    );
  }
}
