import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
class MyHeadrDrawer extends StatefulWidget {
  const MyHeadrDrawer({Key? key}) : super(key: key);

  @override
  _MyHeadrDrawerState createState() => _MyHeadrDrawerState();
}

class _MyHeadrDrawerState extends State<MyHeadrDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor("#b30e11"),
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: HexColor("#b30e11"),
            ),
              accountName: Text("Enas Adly"),
              accountEmail:Text("anosa.adly59@gmail.com"),
               currentAccountPicture: ClipRRect(
                 borderRadius:BorderRadius.circular(110),
                 child: Image.asset("Images/profile.jpg",),
      ),

    ),

    ]
      ),
    );
  }
}
