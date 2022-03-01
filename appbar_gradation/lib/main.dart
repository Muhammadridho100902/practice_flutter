// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          elevation: 8,
          title: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Laundry X",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {}, icon: Icon(Icons.add_circle_outline_rounded)),
            IconButton(onPressed: () {}, icon: Icon(Icons.message_outlined)),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.account_circle_outlined)),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFFFF7F50), Color(0xff6610f2)],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight)),
          ),
        ),
      ),
    );
  }
}
