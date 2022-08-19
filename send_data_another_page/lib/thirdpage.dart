import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  // const ThirdPage({ Key? key }) : super(key: key);
  String img;

  ThirdPage({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(img),
      ),
    );
  }
}