import 'package:ntt_device_models/ntt_device_models.dart';

class ValidatorDelegate {
  const ValidatorDelegate._();

  static final RegExp _udidRegex = RegExp(r'^\d{15}$');

  static bool isUdidValid(String? udid) {
    if (udid == null) return false;

    return _udidRegex.hasMatch(udid);
  }

  static bool isOfficeValid(String? office) {
    if (office == null) return false;

    return Office.names.contains(office);
  }

  static bool isOsValid(String? os) {
    if (os == null) return false;

    return Os.names.contains(os);
  }
}
