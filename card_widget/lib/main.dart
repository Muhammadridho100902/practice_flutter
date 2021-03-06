// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[300],
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              buildcard(Icons.account_box_rounded, "Account Box"),
              buildcard(Icons.adb, "Android")
            ],
          ),
        ),
      ),
    );
  }

  Card buildcard(IconData iconData, String text) {
    return Card(
      elevation: 10,
      child: Row(
        children: <Widget>[
          Container(margin: EdgeInsets.all(10), child: Icon(iconData)),
          Text(text)
        ],
      ),
    );
  }
}
