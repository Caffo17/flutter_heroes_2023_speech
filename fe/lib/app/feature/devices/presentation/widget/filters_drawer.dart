// ignore_for_file: avoid_setters_without_getters

import 'package:flutter/material.dart';
import 'package:ntt_device_models/ntt_device_models.dart';
import '../../../../core/widget/app_button.dart';
import '../../../../core/widget/app_dropdown.dart';
import '../../domain/model/device_status_extension.dart';
import '../../domain/model/office_extension.dart';

class FiltersDrawer extends StatefulWidget {
  const FiltersDrawer({
    super.key,
    required this.onFiltersApplied,
    required this.initialFilter,
  });

  final ValueChanged<Map<String, dynamic>> onFiltersApplied;
  final Map<String, dynamic> initialFilter;

  @override
  _FiltersDrawerState createState() => _FiltersDrawerState();
}

class _FiltersDrawerState extends State<FiltersDrawer> {
  Office? _office;
  DeviceStatus? _status;

  @override
  void initState() {
    super.initState();

    _office = widget.initialFilter['office'] as Office?;
    _status = widget.initialFilter['status'] as DeviceStatus?;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width - 60,
      height: double.maxFinite,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Filters',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        InkWell(
                          onTap: _reset,
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Text(
                              'Reset',
                              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    AppDropdown<Office>(
                      value: _office,
                      items: Office.values,
                      onChanged: (v) => location = v,
                      valueShownBuilder: (e) => e.translate(),
                      label: 'Office',
                    ),
                    const SizedBox(height: 24),
                    AppDropdown<DeviceStatus>(
                      value: _status,
                      items: DeviceStatus.values,
                      onChanged: (v) => status = v,
                      valueShownBuilder: (e) => e.translate(),
                      label: 'Device status',
                    ),
                  ],
                ),
              ),
              AppButton(
                onPressed: () => widget.onFiltersApplied({
                  'office': _office,
                  'status': _status,
                }),
                child: const Text('Apply'),
              )
            ],
          ),
        ),
      ),
    );
  }

  set location(Office? l) {
    if (l != null) {
      setState(() {
        _office = l;
      });
    }
  }

  set status(DeviceStatus? s) {
    if (s != null) {
      setState(() {
        _status = s;
      });
    }
  }

  void _reset() => setState(() {
        _status = null;
        _office = null;
      });
}
