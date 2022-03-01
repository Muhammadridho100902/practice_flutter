// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown[400],
          leading: Icon(Icons.menu),
          title: Center(child: Text("LaundryX")),
        ),
        body: Center(
          child: Container(
              color: Colors.black87,
              width: 400,
              height: 150,
              child: Center(
                child: Text(
                  "Hello World",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                ),
              )),
        ),
      ),
    );
  }
}
