import 'package:flutter/material.dart';
import 'package:signlanguaglearning/Login.dart';
import 'package:splashscreen/splashscreen.dart';
class WelcomePAge extends StatefulWidget {
  const WelcomePAge({Key? key}) : super(key: key);

  @override
  _WelcomePAgeState createState() => _WelcomePAgeState();
}

class _WelcomePAgeState extends State<WelcomePAge> {

  @override
  Widget build(BuildContext context) {
    return  SplashScreen(
      seconds: 14,
      navigateAfterSeconds: new LoginPage(),
      title:Text('Welcome In Sign Language App \n Created by Enas Adly',
        textAlign:TextAlign.center ,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0,),
      ),
      image:  Image.asset("Images/welcome Logo.png"),
      backgroundColor: Colors.white,
      loaderColor: Colors.red,
      photoSize: 100.0,

    );
  }
}