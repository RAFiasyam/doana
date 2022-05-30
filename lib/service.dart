import 'dart:convert';
import 'package:doana/datahadist.dart';
import 'package:doana/datall.dart';
import 'package:http/http.dart' as http;

String baseUrl = 'https://doa-doa-api-ahmadramadhan.fly.dev/api';

Future<List<Datall>> getDoa() async {
  final response = await http
      .get(Uri.parse(baseUrl));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    final _data = jsonDecode(response.body) as List;
    final List<Datall> list = _data.map((json) => Datall.FromJson(json)).toList();
    print(response.body);
    return list;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load Data(Gagal memuat Data)');
  }
}

Future<List<DataHadist>> getHadist() async {
  final response = await http
      .get(Uri.parse('https://api.hadith.sutanlab.id/books'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    final _data = jsonDecode(response.body)['data'] as List;
    final List<DataHadist> list = _data.map((json) => DataHadist.FromJson(json)).toList();
    print(response.body);
    return list;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load Data(Gagal memuat Data)');
  }
}

Future<List<DetailHadist>> getImam(String id) async {
  final response = await http
      .get(Uri.parse('https://api.hadith.sutanlab.id/books/$id?range=1-50'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    final _data = jsonDecode(response.body)['data']['hadiths'] as List;
    final List<DetailHadist> list = _data.map((json) => DetailHadist.FromJson(json)).toList();
    print(response.body);
    return list;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load Data(Gagal memuat Data)');
  }
}