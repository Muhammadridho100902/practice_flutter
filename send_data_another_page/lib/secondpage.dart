import 'package:flutter/material.dart';
import 'package:send_data_another_page/main.dart';

class SecondPage extends StatelessWidget {
  String str = "";

  SecondPage({Key? key, required this.str}) : super(key: key);
  // const SecondPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(str),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
              },
              child: Text("Go Back"),
            )
          ],
        ),
      ),
    );
  }
}
