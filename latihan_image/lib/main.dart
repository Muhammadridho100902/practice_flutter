// ignore_for_file: prefer_const_constructors

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
          title: Text("Latihan Image"),
        ),
        body: Center(
          child: Container(
            color: Colors.blue[200],
            width: 200,
            height: 200,
            padding: EdgeInsets.all(5),
            child: Image(
                image: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/1256/1256650.png"),
                    fit: BoxFit.contain,),
          ),
        ),
      ),
    );
  }
}
