// ignore_for_file: deprecated_member_use, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:nav_page/main_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text("LOGIN"),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return MainPage();
            }));
          },
        ),
      ),
    );
  }
}
