enum Os {
  android,
  ios;

  static List<String> get names => values.map((e) => e.name).toList();
}
