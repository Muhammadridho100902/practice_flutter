// ignore_for_file: avoid_unnecessary_containers, unnecessary_new, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class Headset extends StatelessWidget {
  const Headset({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text('Headset', style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Image.asset("img/headset.png", width: 200.0,)
          ],
        ),
      ),
    );
  }
}