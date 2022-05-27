import 'package:doana/doahari.dart';
import 'package:doana/doapagi.dart';
import 'package:doana/doapetang.dart';
import 'package:doana/home_menu.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
        child: Column(
          children: [
            Image(image: AssetImage('images/BAR Ku.png')),
            SizedBox(height: 20,),
            Expanded(
              child: ListView.separated(
                itemBuilder: (BuildContext, index) {
                  final HomeMenu homeItem = homeMenu[index];
                  final border = RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  );
                  return ListTile(
                    shape: border,
                    contentPadding: EdgeInsets.all(20),
                    tileColor: Color(0xFF99D0EB),
                    leading: Image.asset(homeItem.image,),
                    title: Text(homeItem.title, style: TextStyle(color: Color(0xFFFFFFFFF)),),
                    subtitle: Text(homeItem.subtitle, style: TextStyle(color: Color(0xFFFFFFFFF)),),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        if (homeItem.routeid == "DoaHari") {
                          return DoaHari(homeData: homeItem,);
                        } else if (homeItem.routeid == "DoaPagi") {
                          return DoaPagi();
                        } else {
                          return DoaPetang();
                        }
                      }));
                    },
                  );
                },
                itemCount: homeMenu.length,
                shrinkWrap: true,
                padding: EdgeInsets.all(0),
                scrollDirection: Axis.vertical,
                separatorBuilder: (_,i) {
                  return SizedBox(height: 20,);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
