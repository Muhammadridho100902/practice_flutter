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
        appBar: AppBar(title: Text("Space Widget"),),
        body: Center(
          child: Row(
            children: <Widget>[
              Spacer(flex: 2,),
              Container(width: 80, height: 80, color: Colors.brown[200],),
              Spacer(flex: 4,),
              Container(width: 80, height: 80, color: Colors.blueGrey[200],),
              Spacer(flex: 4,),
              Container(width: 80, height: 80, color: Colors.teal[200],),
              Spacer(flex: 2,)
            ],
          ),
        ),
      ),
    );
  }
}