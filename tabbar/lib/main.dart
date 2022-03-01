// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import './hal_komputer.dart' as komputer;
import './hal_headset.dart' as headset;
import './hal_radio.dart' as radio;
import './hal_smartphone.dart' as hp;

void main() {
  runApp(new MaterialApp(
    title: 'Tab Bar',
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  late TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.brown[400],
        title: new Text('Daftar Electronik'),
      ),

      body: new TabBarView(
        controller: controller,
        children:<Widget> [
          new komputer.komputer(),
          new headset.Headset(),
          new radio.Radio(),
          new hp.Smartphone()
        ],
      ),

      bottomNavigationBar: new Material(
        color: Colors.brown[400],
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.computer),text: 'Computer',),
            new Tab(icon: new Icon(Icons.headset),text: 'Headset',),
            new Tab(icon: new Icon(Icons.radio),text: 'Radio',),
            new Tab(icon: new Icon(Icons.smartphone),text: 'Smartphone',),
          ],
        ),
      ),
    );
  }
}