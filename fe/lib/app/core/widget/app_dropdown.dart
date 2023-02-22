import 'package:flutter/material.dart';
import 'mixin/form_field_decoration_mixin.dart';

class AppDropdown<T> extends StatelessWidget with FormFieldDecorationMixin {
  const AppDropdown({
    super.key,
    this.value,
    required this.label,
    required this.items,
    required this.onChanged,
    required this.valueShownBuilder,
    this.validator,
  });

  final T? value;
  final List<T> items;
  final ValueChanged<T?> onChanged;
  final String label;
  final String Function(T) valueShownBuilder;
  final String? Function(T?)? validator;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: value,
      iconEnabledColor: Colors.white,
      isExpanded: true,
      isDense: false,
      selectedItemBuilder: _selectedItemBuilder,
      items: items.map((e) => _buildMenuItem(context, e)).toList(),
      onChanged: onChanged,
      decoration: buildInputDecoration(
        context,
        label: label,
      ),
      autovalidateMode: AutovalidateMode.disabled,
      validator: validator,
    );
  }

  List<Widget> _selectedItemBuilder(BuildContext context) {
    return items
        .map(
          (e) => Text(
            valueShownBuilder(e),
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        )
        .toList();
  }

  DropdownMenuItem<T> _buildMenuItem(BuildContext context, T e) {
    return DropdownMenuItem<T>(
      value: e,
      child: Text(
        valueShownBuilder(e),
        style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.black),
      ),
    );
  }
}
