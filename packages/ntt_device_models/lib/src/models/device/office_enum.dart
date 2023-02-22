enum Office {
  milano,
  roma,
  treviso,
  napoli,
  torino,
  cosenza;

  static List<String> get names => values.map((e) => e.name).toList();
}
