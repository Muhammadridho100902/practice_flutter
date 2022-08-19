// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:send_data_another_page/secondpage.dart';
import 'package:send_data_another_page/thirdpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Send Data"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Rp.1000"),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(str: "Rp.1000"),
                    ));
              },
              child: Text('Send Data'),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Rp.2000"),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(str: "Rp.2000"),
                    ));
              },
              child: Text('Send Data'),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirdPage(
                        img: 'https://images5.alphacoders.com/540/540654.jpg',
                      ),
                    ));
              },
              child: Text('Next Page'),
            ),
          ],
        ),
      ),
    );
  }
}
