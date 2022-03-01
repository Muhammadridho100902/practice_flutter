// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  void tekanTombol() {
    setState(() {
      number = number + 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Statefull"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                number.toString(),
                style: TextStyle(fontSize: 10 + number.toDouble()),
              ),
              RaisedButton(
                color: Colors.black87,
                textColor: Colors.white,
                child: Text("Tambah"),
                onPressed: tekanTombol,
              )
            ],
          ),
        ),
      ),
    );
  }
}
