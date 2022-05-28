import 'package:doana/datapagi.dart';
import 'package:doana/detailscr.dart';
import 'package:doana/utils.dart';
import 'package:flutter/material.dart';

class DoaPagi extends StatelessWidget {
  const DoaPagi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
        child: Column(
          children: [
            Image(image: AssetImage('images/BAR Ke.png')),
            SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Card(
                      color: Color(0xFF99D0EB),
                      elevation: 5,
                      child: ListTile(
                        title: Text(dataDoaPagi[index].doa, style: TextStyle(color: Color(0xFFFFFFFF)),),
                        onTap: () {
                          Navigator.push(context, customRoute(DetailScreen(dataDoaPagi[index])));
                        },
                      ),
                    ),
                  );
                },
                itemCount: dataDoaPagi.length,
              ),
            )
          ],
        ),
      )
    );
  }
}
