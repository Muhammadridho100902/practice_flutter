// ignore_for_file: unnecessary_new, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HalSatu(),
    title: 'Navigation',
    routes: <String, WidgetBuilder>{
      '/HalSatu' : (BuildContext context) => new HalSatu(),
      '/HalDua' : (BuildContext context) => new HalDua(),
      '/HalTiga' : (BuildContext context) => new HalTiga(),
    },
  ));
}

class HalSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Music"),
      ),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.headset, size: 50.0,),
          onPressed: (){
            Navigator.pushNamed(context, '/HalDua');
          },
          ),
      ),
    );
  }
}

class HalDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Speaker"),
      ),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.speaker, size: 50.0,),
          onPressed: (){
            Navigator.pushNamed(context, '/HalTiga');
          },
          ),
      ),
    );
  }
}

class HalTiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Nanti'),
      ),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.smartphone, size: 50.0,), 
          onPressed: (){
            Navigator.pushNamed(context, '/HalSatu');
          },
        ),
      ),
    );
  }
}
