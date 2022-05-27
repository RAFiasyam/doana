class Datall {
  final String doa;
  final String ayat;
  // final String latin;
  final String artinya;

  const Datall({
    required this.doa,
    required this.ayat,
    // required this.latin,
    required this.artinya
  });

  factory Datall.FromJson(Map<String, dynamic> json) {
    return Datall(
        doa: json['doa'],
        ayat: json['ayat'],
        // latin: json['latin'],
        artinya: json['artinya']
    );
  }

}