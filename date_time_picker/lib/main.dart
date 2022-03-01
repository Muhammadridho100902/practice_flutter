// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    DateTime selectedDate = DateTime.now();
    
    return Scaffold(
        appBar: AppBar(
          title: Text('date time picker'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                selectedDate.toString(),
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15,),
              OutlinedButton(
                  onPressed: () {
                    showDatePicker(
                      context: context,
                      initialDate: selectedDate,
                      firstDate: DateTime(1990),
                      lastDate: DateTime(2100),
              ).then(
                (value) {
                  setState(() {
                    selectedDate = value!;
                    return print(value);
                  });
              });
                  },
                  child: Text('Date Time Picker')),
            ],
          ),
        ));
  }
}
