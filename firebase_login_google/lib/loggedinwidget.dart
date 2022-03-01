// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_field

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoggedInWidget extends StatefulWidget {
  @override
  State<LoggedInWidget> createState() => _LoggedInWidgetState();
}

class _LoggedInWidgetState extends State<LoggedInWidget> {

  final dynamic user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Center(
            child: Text("Profile"),
          ),
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
              user.photoURL!.toString()
              ),
          )
        ],
      ),
    );
  }
}
