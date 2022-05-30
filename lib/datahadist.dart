class DataHadist {
  final String name;
  final String id;
  final int available;

  const DataHadist({
    required this.name,
    required this.id,
    required this.available
  });

  factory DataHadist.FromJson(Map<String, dynamic> json) {
    return DataHadist(
        name: json['name'],
        id: json['id'],
        available: json['available']
    );
  }
}

class DetailHadist {
  final String arab;
  final String artinya;

  const DetailHadist({
    required this.arab,
    required this.artinya
  });

  factory DetailHadist.FromJson(Map<String, dynamic> json) {
    return DetailHadist(
        arab: json['arab'],
        artinya: json['id']);
  }
}