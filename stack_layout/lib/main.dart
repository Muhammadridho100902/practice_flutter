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
          backgroundColor: Colors.deepOrange[300],
          title: Text("Stack & Align"),
        ),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.amberAccent[200],
                        ),
                      ),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.amberAccent[700],
                          ))
                    ],
                  ),
                ),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.amberAccent[700],
                          ),
                        ),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.amberAccent[200],
                            ))
                      ],
                    ))
              ],
            ),
            ListView(
              children: <Widget>[
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(35),
                        child: Text(
                          "Dengan Ini Saya Menyatakan Telah Selesai Belajar Stack & Layout",
                          style: TextStyle(fontSize: 30.0),
                        )),
                    Container(
                        margin: EdgeInsets.all(35),
                        child: Text(
                          "Dengan Ini Saya Menyatakan Telah Selesai Belajar Stack & Layout",
                          style: TextStyle(fontSize: 30.0),
                        )),
                    Container(
                        margin: EdgeInsets.all(35),
                        child: Text(
                          "Dengan Ini Saya Menyatakan Telah Selesai Belajar Stack & Layout",
                          style: TextStyle(fontSize: 30.0),
                        )),
                    Container(
                        margin: EdgeInsets.all(35),
                        child: Text(
                          "Dengan Ini Saya Menyatakan Telah Selesai Belajar Stack & Layout",
                          style: TextStyle(fontSize: 30.0),
                        )),
                    Container(
                        margin: EdgeInsets.all(35),
                        child: Text(
                          "Dengan Ini Saya Menyatakan Telah Selesai Belajar Stack & Layout",
                          style: TextStyle(fontSize: 30.0),
                        )),
                    Container(
                        margin: EdgeInsets.all(35),
                        child: Text(
                          "Dengan Ini Saya Menyatakan Telah Selesai Belajar Stack & Layout",
                          style: TextStyle(fontSize: 30.0),
                        )),
                    Container(
                        margin: EdgeInsets.all(35),
                        child: Text(
                          "Dengan Ini Saya Menyatakan Telah Selesai Belajar Stack & Layout",
                          style: TextStyle(fontSize: 30.0),
                        )),
                    Container(
                        margin: EdgeInsets.all(35),
                        child: Text(
                          "Dengan Ini Saya Menyatakan Telah Selesai Belajar Stack & Layout",
                          style: TextStyle(fontSize: 30.0),
                        )),
                    Container(
                        margin: EdgeInsets.all(35),
                        child: Text(
                          "Dengan Ini Saya Menyatakan Telah Selesai Belajar Stack & Layout",
                          style: TextStyle(fontSize: 30.0),
                        ))
                  ],
                )
              ],
            ),
            Align(
              alignment: Alignment(0, 0.90),
              child: RaisedButton(
                  child: Text(
                    "Push The Button",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.greenAccent[400],
                  onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}
