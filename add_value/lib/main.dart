// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 50 * 10),
        child: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                print(counter++);
              });
            },
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(50),
                  child: Text(
                    "Counting",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "$counter",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ),
                Container(
                  height: 100,
                  width: 200,
                  child: Center(
                    child: Text(
                      "Add Item",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(4, 4),
                          color: Colors.grey,
                          blurRadius: 5,
                          spreadRadius: 5),
                      BoxShadow(
                          offset: Offset(-4, -4),
                          color: Colors.white70,
                          blurRadius: 5,
                          spreadRadius: 5),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      print(counter--);
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 200,
                    child: Center(
                      child: Text(
                        "Delete Item",
                        style: TextStyle(color: Colors.black, fontSize: 24),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(4, 4),
                            color: Colors.grey,
                            blurRadius: 5,
                            spreadRadius: 5),
                        BoxShadow(
                            offset: Offset(-4, -4),
                            color: Colors.white70,
                            blurRadius: 5,
                            spreadRadius: 5),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
