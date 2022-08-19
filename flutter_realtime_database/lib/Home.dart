// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  // const HomeScreen({Key? key}) : super(key: key);
  // HomeScreen({this.app});
  late final FirebaseApp app;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final referenceDatabase = FirebaseDatabase.instance;

  final movieName = 'MovieTitled';

  final movieController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final ref = referenceDatabase.reference();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Store Data"),
      ),
      body: SingleChildScrollView(
        // controller: controller,
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.green,
                child: Column(
                  children: [
                    Text(
                      movieName,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    TextField(
                      controller: movieController,
                      keyboardType: TextInputType.name,
                      textAlign: TextAlign.center,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          ref
                              .child('movies')
                              .push()
                              .child(movieName)
                              .set(movieController.text)
                              .asStream();
                        },
                        child: Center(
                          child: Text("Submit"),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
