// ignore_for_file: prefer_const_constructors

import 'package:crud_with_api/model/murid.dart';
import 'package:crud_with_api/service/muridService.dart';
import 'package:crud_with_api/view/search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future data;
  List<Murid> data2 = [];
  // untuk searching data
  bool isSearching = false;
  TextEditingController searchText = TextEditingController();

  @override
  void initState() {
    data = MuridService().getMurid();
    data.then((value) {
      setState(() {
        data2 = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: !isSearching
            ? Text("List murid")
            : TextField(
                controller: searchText,
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18)),
                onSubmitted: (value) {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchMurid(keyword: searchText.text)
                  ));
                },
              ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                this.isSearching = !this.isSearching;
              });
            },
            icon: !isSearching ? Icon(Icons.search, color: Colors.white) : Icon(Icons.cancel, color: Colors.white)
          ),
        ],
      ),
      body: data2.length == 0
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: data2.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data2[index].nameMurid),
                );
              },
            ),
    );
  }
}
