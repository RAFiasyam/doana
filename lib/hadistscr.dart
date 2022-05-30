import 'package:doana/datahadist.dart';
import 'package:doana/detailscrhd.dart';
import 'package:doana/service.dart';
import 'package:doana/utils.dart';
import 'package:flutter/material.dart';

class HadistScreen extends StatelessWidget {
  const HadistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getHadist(),
          builder: (context, snapshot) => snapshot.data != null
              ? ListView.builder(
                itemBuilder: (context, index) {
                  final DataHadist batang = (snapshot.data as List<DataHadist>)[index];
                  return Padding(
                    padding: const EdgeInsets.only(top: 5, right: 10, left: 10),
                    child: InkWell(
                      child: Card(
                        color: Color(0xFF99D0EB),
                        elevation: 5,
                        child: ListTile(
                          title: Text(batang.name, style: TextStyle(color: Color(0xFFFFFFFF)),),
                          subtitle: Text(batang.available.toString(), style: TextStyle(color: Color(0xFFFFFFFF)),),
                          onTap: () {
                            Navigator.push(context, customRoute(DetailScreenHadist(id: batang.id)));
                          },
                        ),
                      ),
                    ),
                  );
                },
                itemCount: (snapshot.data as List<DataHadist>).length,
              )
              : const Center(child: CircularProgressIndicator(),)
      ),
    );
  }
}
