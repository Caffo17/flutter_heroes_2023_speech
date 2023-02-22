import 'package:ntt_device_models/ntt_device_models.dart';

extension OsExt on Os {
  String translate() {
    if (this == Os.android) return 'Android';

    return 'iOS';
  }
}
