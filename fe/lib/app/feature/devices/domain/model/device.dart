import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ntt_device_models/ntt_device_models.dart';

import 'reservation.dart';

part 'device.freezed.dart';

@unfreezed
class Device with _$Device {
  factory Device({
    required String udid,
    required String name,
    required String accountEmail,
    required String accountPassword,
    required String osVersion,
    required DeviceStatus status,
    required Office location,
    required Os osType,
    String? pin,
    @Default([]) List<Reservation> useHistory,
    Reservation? reservation,
  }) = _Device;
}
