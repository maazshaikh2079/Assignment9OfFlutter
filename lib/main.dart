// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import "package:instaeco/screens/home_page.dart";
import "package:instaeco/screens/login_page.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      "/": (context) => LoginPage(),
      "/home": (context) => HomePage(),
      "/login": (context) => LoginPage()
    } // Use the HomePage widget as the home screen
        );
  }
}
