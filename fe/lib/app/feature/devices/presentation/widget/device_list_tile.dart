import 'package:flutter/material.dart';

import '../../domain/model/device.dart';
import '../../domain/model/device_status_extension.dart';

class DeviceListTile extends StatelessWidget {
  const DeviceListTile({
    super.key,
    required this.device,
    this.onTap,
  });

  final Device device;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: device.status.statusColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        title: Text(
          device.name,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
        ),
        onTap: onTap,
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    );
  }
}
