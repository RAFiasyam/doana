import 'package:doana/datall.dart';
import 'package:doana/detailscr.dart';
import 'package:doana/home_menu.dart';
import 'package:doana/service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoaHari extends StatelessWidget {
  final HomeMenu homeData;
  const DoaHari({Key? key, required this.homeData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
        child: Column(
          children: [
            Image(image: AssetImage(homeData.mainImage)),
            SizedBox(height: 20,),
            FutureBuilder(
                future: getDoa(),
                builder: (context, snapshot) => snapshot.data != null
                ? Expanded(
                  child: ListView.builder(
                      itemBuilder: (context, index) {
                        final Datall batang = (snapshot.data as List<Datall>)[index];
                        return InkWell(
                          child: Card(
                            color: Color(0xFF99D0EB),
                            elevation: 5,
                            child: ListTile(
                              title: Text(batang.doa, style: TextStyle(color: Color(0xFFFFFFFF)),),
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return DetailScreen(batang);
                                }));
                              },
                            ),
                          ),
                          );
                      },
                    itemCount: (snapshot.data as List<Datall>).length,
                  ),
                )
                    : const Center(child: CircularProgressIndicator(),)
            ),
          ],
         ),
      ),
    );
  }

}
