import 'package:ntt_device_models/ntt_device_models.dart';

extension OfficeExt on Office {
  String translate() {
    return name.replaceRange(0, 1, name[0].toUpperCase());
  }
}
