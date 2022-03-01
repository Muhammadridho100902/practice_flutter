import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flexible Layout'),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.brown[400],
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.brown[300],
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.brown[200],
                      )),
                ],
              ),
            ),
            Flexible(
              flex: 2, 
              child: Container(
                margin: EdgeInsets.all(5),
                color: Colors.red[400])),
            Flexible(
              flex: 1, 
              child: Container(
                margin: EdgeInsets.all(5),
                color: Colors.green[400])),
          ],
        ),
      ),
    );
  }
}
