// ignore_for_file: unnecessary_new, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "AppBar",
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // backgroundColor: Colors.black12,
      appBar: new AppBar(
        backgroundColor: Colors.black54,
        leading: new Icon(Icons.home),
        title: new Center(
          child: new Text('LaundryX'),
        ),
        actions: <Widget>[new Icon(Icons.search)],
      ),
      body: new Container(
          child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
            new Icon(
            Icons.account_circle, 
            size: 70.0,
            color: Colors.black87,
            ),
            new Text("User Name", 
            style: TextStyle(
              fontFamily: "serif",
              color: Colors.black45,
              fontSize: 20.0
            ),
            )
            ],
          ),
          
          new Row(
            children: <Widget>[
            new Icon(
            Icons.password_rounded, 
            size: 70.0,
            color: Colors.black87,
            ),
              new Text("Password", 
              style: TextStyle(
                fontFamily:"serif",
                color: Colors.black45,
                fontSize: 20.0
              ),
              )
            ],
          ),

          new Row(
            children: <Widget>[
            new Icon(
            Icons.email, 
            size: 70.0,
            color: Colors.black87,
            ),
              new Text("Email", 
              style: TextStyle(
                fontFamily:"serif",
                color: Colors.black45,
                fontSize: 20.0
              ),
              )
            ],
          ),
        ],
      )),
    );
  }
}
