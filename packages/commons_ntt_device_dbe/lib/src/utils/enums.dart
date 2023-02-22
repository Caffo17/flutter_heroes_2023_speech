T? getEnumValue<T extends Enum>(String? v, T Function(String) byName) {
  if (v == null) {
    return null;
  } else {
    try {
      return byName(v);
    } catch (e) {
      return null;
    }
  }
}
