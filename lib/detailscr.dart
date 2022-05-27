import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'datall.dart';

class DetailScreen extends StatelessWidget {
  final Datall batang;
  const DetailScreen(this.batang, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 30, left: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 50, right: 30, left: 30)),
              //judul
              Text(batang.doa, style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 20), textAlign: TextAlign.center,),
              //salah satu doa dari ...
              Text('Doa-Doa', style: TextStyle(fontFamily: 'Poppins'),),
              //hanya line
              Container(
                height: 2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.white,
                      Colors.black,
                      Colors.white,
                    ]
                  ),
                ),
              ),
              //arabnya
              Text(batang.ayat, style: TextStyle(fontFamily: 'Arab', height: 2, fontSize: 25), textAlign: TextAlign.center,),
              //latinnya
              // Text(batang.latin, style: TextStyle(fontFamily: 'Poppins', height: 1, fontSize: 14), textAlign: TextAlign.center,),
              //artinya
              Text(batang.artinya, style: TextStyle(fontFamily: 'Poppins', height: 2, fontSize: 15), textAlign: TextAlign.center,)
            ],
          ),
        ),
      )
    );
  }
}
