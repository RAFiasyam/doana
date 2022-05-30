import 'package:doana/datahadist.dart';
import 'package:doana/service.dart';
import 'package:flutter/material.dart';

class DetailScreenHadist extends StatelessWidget {
  final String id;
  const DetailScreenHadist({required this.id,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getImam(id),
          builder: (context, snapshot) => snapshot.data != null
              ? ListView.builder(
                itemBuilder: (context, index) {
                  final DetailHadist batang = (snapshot.data as List<DetailHadist>)[index];
                  return InkWell(
                    child: Card(
                      color: Color(0xFF99D0EB),
                      elevation: 5,
                      child: ListTile(
                        title: Text(batang.arab, style: TextStyle(color: Color(0xFFFFFFFF)),),
                        subtitle: Text(batang.artinya, style: TextStyle(color: Color(0xFFFFFFFF)),),
                      ),
                    ),
                  );
                },
                itemCount: (snapshot.data as List<DetailHadist>).length,
              )
              : const Center(child: CircularProgressIndicator(),)
      ),
    );
  }
}
