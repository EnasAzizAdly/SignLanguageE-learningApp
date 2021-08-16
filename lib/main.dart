import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:signlanguaglearning/FoodPages.dart';
import 'package:signlanguaglearning/HomePage.dart';
import 'package:signlanguaglearning/Signup.dart';
import 'package:signlanguaglearning/WelcomePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomePAge(),
      routes: {
        "signup": (context) => Signup(),
        "homepage": (context) => HomePage(),
        "FoodPage": (context) => VideoPlayerScreen(),
      },
    );
  }
}
