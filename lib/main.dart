import 'package:flutter/material.dart';
import 'screen/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff25D366),
        tabBarTheme: TabBarTheme(labelColor: Colors.white),
        textTheme: TextTheme(
            title: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
            body1: TextStyle(color: Colors.black),
            button: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0)),
        bottomAppBarColor: Colors.white,
      ),
      home: Home(),
    );
  }
}
