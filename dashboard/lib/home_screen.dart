import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget> [
          Container(
            height: size.height * 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('img/computer.png')
              ),
            ),
          ),
        ],
      ),
    );
  }
}