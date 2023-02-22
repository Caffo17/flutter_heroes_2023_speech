import 'package:flutter/material.dart';
import 'package:ntt_device_models/ntt_device_models.dart';

extension StatusExt on DeviceStatus {
  String translate() {
    if (this == DeviceStatus.available) return 'Available';
    if (this == DeviceStatus.notAvailable) return 'Not available';
    if (this == DeviceStatus.owned) return 'Owned';

    return 'Already booked';
  }

  String get statusButtonText {
    if (this == DeviceStatus.available) return 'Book device';
    if (this == DeviceStatus.notAvailable) return 'Device not available';
    if (this == DeviceStatus.owned) return 'Release device';

    return 'Device already booked';
  }

  IconData get statusIcon {
    if (this == DeviceStatus.available) return Icons.bookmark;
    if (this == DeviceStatus.notAvailable) return Icons.cancel;
    if (this == DeviceStatus.owned) return Icons.bookmark_border;

    return Icons.not_interested;
  }

  Color get statusColor {
    if (this == DeviceStatus.available) return Colors.teal;
    if (this == DeviceStatus.notAvailable) return Colors.red;
    if (this == DeviceStatus.owned) return Colors.blue;

    return Colors.orange;
  }

  Color get statusColorAccent {
    if (this == DeviceStatus.available) return Colors.tealAccent;
    if (this == DeviceStatus.notAvailable) return Colors.redAccent;
    if (this == DeviceStatus.owned) return Colors.blueAccent;

    return Colors.orangeAccent;
  }
}
