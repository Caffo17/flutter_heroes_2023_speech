import 'package:flutter/material.dart';

class DeviceStatusLegend extends StatelessWidget {
  const DeviceStatusLegend({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 8,
          right: 8,
          bottom: 16,
        ),
        child: Wrap(
          spacing: 20,
          runSpacing: 5,
          children: <Widget>[
            _buildDeviceStateLegendRow(
              context,
              'Available',
              Colors.teal,
            ),
            _buildDeviceStateLegendRow(
              context,
              'Not available',
              Colors.red,
            ),
            _buildDeviceStateLegendRow(
              context,
              'Owned',
              Colors.blue,
            ),
            _buildDeviceStateLegendRow(
              context,
              'Busy',
              Colors.orange,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDeviceStateLegendRow(
    BuildContext context,
    String text,
    Color color,
  ) =>
      Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      );
}
