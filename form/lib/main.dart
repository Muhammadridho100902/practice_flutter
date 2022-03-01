// ignore_for_file: unnecessary_new, prefer_const_constructors, avoid_unnecessary_containers, prefer_final_fields

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _jk="";

  void _pilihJk(String value){
    setState(() {
      _jk=value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.list),
        title: new Text("Form"),
        backgroundColor: Colors.lime[300],
      ),

      body: ListView(
        children: <Widget> [
          new Container(
            padding: new EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                new TextField(
                  decoration: new InputDecoration(
                    hintText: 'Your Name',
                    labelText: 'Full Name',
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)
                    )
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 30.0),),
                new TextField(
                  obscureText: true,
                  decoration: new InputDecoration(
                    hintText: 'Your Password',
                    labelText: 'Passwrod',
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)
                    )
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 30.0),),
                new TextField(
                  decoration: new InputDecoration(
                    hintText: 'Your Email',
                    labelText: 'Email',
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)
                    )
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 30.0),),
                new TextField(
                  maxLines: 3,
                  decoration: new InputDecoration(
                    hintText: 'Your Address',
                    labelText: 'Address',
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)
                    )
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new Text("Pilih Jenis kelamin"),
                new RadioListTile(
                  value: "Laki-Laki",
                  title: new Text("Laki-Laki"),
                  groupValue: _jk, 
                  onChanged: (String? value) {
                    _pilihJk(value!);
                  },
                  activeColor: Colors.deepOrangeAccent[200],
                  subtitle: new Text("Jika anda Laki-laki"),
                  ),

                  new RadioListTile(
                  value: "Wanita",
                  title: new Text("Wanita"),
                  groupValue: _jk, 
                  onChanged: (String? value) {
                    _pilihJk(value!);
                  },
                  activeColor: Colors.deepOrangeAccent[200],
                  subtitle: new Text("Jika anda Wanita"),
                  ),

                  new Padding(padding: new EdgeInsets.only(top: 30.0),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}