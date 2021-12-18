import 'package:flutter/material.dart';
import 'package:travel_app/constant.dart';
import 'package:travel_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        fontFamily: "Montserrat",
        primaryColor: kButtonColor,
        primarySwatch: Colors.teal
    ),
      home: HomeScreen(),
    );
  }
}