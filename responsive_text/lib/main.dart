// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/4,
              decoration: BoxDecoration(
                color: Colors.yellow
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: AutoSizeText(
                    "Responsive Text assalamualaikum wr wb",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    maxLines: 2,
                    minFontSize: 18,
                    maxFontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
    );
  }
}