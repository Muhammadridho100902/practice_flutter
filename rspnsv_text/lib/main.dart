// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: AutoSizeText(
                  "Text",
                  style: TextStyle(fontSize: 40),
                  maxLines: 2,
                  maxFontSize: 40,
                  // minFontSize: 12,
                )
                    // Text(
                    //   "TEXT",
                    //   style: TextStyle(fontSize: 40, color: Colors.white),
                    // ),
                    ),
              ),
              // SizedBox(
              //   width: 20,
              // ),
              // Container(
              //   width: MediaQuery.of(context).size.width / 4,
              //   height: MediaQuery.of(context).size.height / 4,
              //   decoration: BoxDecoration(
              //       color: Colors.red, borderRadius: BorderRadius.circular(20)),
              //   child: Center(
              //     child: Text(
              //       "TEXT",
              //       style: TextStyle(fontSize: 40, color: Colors.white),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   width: 20,
              // ),
              // Container(
              //   width: MediaQuery.of(context).size.width / 4,
              //   height: MediaQuery.of(context).size.height / 4,
              //   decoration: BoxDecoration(
              //       color: Colors.yellow,
              //       borderRadius: BorderRadius.circular(20)),
              //   child: Center(
              //     child: Text(
              //       "TEXT",
              //       style: TextStyle(fontSize: 40, color: Colors.white),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   width: 20,
              // ),
              // Container(
              //   width: MediaQuery.of(context).size.width / 4,
              //   height: MediaQuery.of(context).size.height / 4,
              //   decoration: BoxDecoration(
              //       color: Colors.red, borderRadius: BorderRadius.circular(20)),
              //   child: Center(
              //     child: Text(
              //       "TEXT",
              //       style: TextStyle(fontSize: 40, color: Colors.white),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   width: 20,
              // ),
              // Container(
              //   width: MediaQuery.of(context).size.width / 4,
              //   height: MediaQuery.of(context).size.height / 4,
              //   decoration: BoxDecoration(
              //       color: Colors.yellow,
              //       borderRadius: BorderRadius.circular(20)),
              //   child: Center(
              //     child: Text(
              //       "TEXT",
              //       style: TextStyle(fontSize: 40, color: Colors.white),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   width: 20,
              // ),
              // Container(
              //   width: MediaQuery.of(context).size.width / 4,
              //   height: MediaQuery.of(context).size.height / 4,
              //   decoration: BoxDecoration(
              //       color: Colors.red, borderRadius: BorderRadius.circular(20)),
              //   child: Center(
              //     child: Text(
              //       "TEXT",
              //       style: TextStyle(fontSize: 40, color: Colors.white),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   width: 20,
              // ),
              // Container(
              //   width: MediaQuery.of(context).size.width / 4,
              //   height: MediaQuery.of(context).size.height / 4,
              //   decoration: BoxDecoration(
              //       color: Colors.yellow,
              //       borderRadius: BorderRadius.circular(20)),
              //   child: Center(
              //     child: Text(
              //       "TEXT",
              //       style: TextStyle(fontSize: MediaQuery.textScaleFactorOf(context), color: Colors.white),
              //     ),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
