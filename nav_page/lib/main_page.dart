import 'package:flutter/material.dart';
import 'package:nav_page/secound_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Go To Secound Page"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecoundPage();
            }));
          },
        ),
      ),
    );
  }
}
