// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color? color1 = Colors.red[100];
  Color? color2 = Colors.green[200];
  Color? targetColor;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent.withOpacity(0.3),elevation: 10,
          title: Center(child: Text("Latihan Draggable")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Draggable<Color>(
                  data: color1,
                  child: SizedBox(
                    width: 150,
                    height: 50,
                    child: Material(
                      color: color1,
                      shape: StadiumBorder(),
                      elevation: 8,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 150,
                    height: 50,
                    child: Material(
                      color: Colors.black26,
                      shape: StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    width: 150,
                    height: 50,
                    child: Material(
                      color: color1?.withOpacity(0.5),
                      shape: StadiumBorder(),
                      elevation: 8,
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: color2,
                  child: SizedBox(
                    width: 150,
                    height: 50,
                    child: Material(
                      color: color2,
                      shape: StadiumBorder(),
                      elevation: 8,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 150,
                    height: 50,
                    child: Material(
                      color: Colors.black26,
                      shape: StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    width: 150,
                    height: 50,
                    child: Material(
                      color: color2?.withOpacity(0.5),
                      shape: StadiumBorder(),
                      elevation: 8,
                    ),
                  ),
                )
              ],
            ),
            DragTarget(
              onWillAccept: (value) => true,
              onAccept: (value) {
                isAccepted = true;
                targetColor = value as Color?;
              },
              builder: (context, candidateData, rejectedData) {
                return (isAccepted)
                    ? SizedBox(
                        width: 200,
                        height: 80,
                        child: Material(
                          color: targetColor,
                          shape: StadiumBorder(),
                          elevation: 5,
                        ),
                      )
                    : SizedBox(
                        width: 200,
                        height: 80,
                        child: Material(
                          color: color1?.withOpacity(0.5),
                          shape: StadiumBorder(),
                        ),
                      );
              },
            )
          ],
        ),
      ),
    );
  }
}
