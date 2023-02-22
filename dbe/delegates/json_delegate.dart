import 'dart:convert';

class JsonDelegate {
  static bool validate(String? s) {
    if (s == null) {
      return false;
    } else {
      if (s.isNotEmpty) {
        try {
          jsonDecode(s);
          return true;
        } catch (_) {
          return false;
        }
      } else {
        return false;
      }
    }
  }
}
