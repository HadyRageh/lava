// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lava/Screens/welcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lava',
      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: Color(0xffFFFFFF),
      ),
      home: WelcomePage(),
    );
  }
}
