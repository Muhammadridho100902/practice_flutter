// ignore_for_file: prefer_const_constructors

import 'package:crud_with_api/model/murid.dart';
import 'package:crud_with_api/service/muridService.dart';
import 'package:flutter/material.dart';

class SearchMurid extends StatefulWidget {
  late String keyword;

  SearchMurid({required this.keyword});

  // const SearchMurid({Key? key}) : super(key: key);

  @override
  State<SearchMurid> createState() => _SearchMuridState();
}

class _SearchMuridState extends State<SearchMurid> {
  late Future data;
  List<Murid> data2 = [];
  // untuk searching data
  bool isSearching = false;
  TextEditingController searchText = TextEditingController();
  bool cekData = true;

  @override
  void initState() {
    data = MuridService().getMurid();
    data.then((value) {
      setState(() {
        data2 = value;
        data2 = data2
            .where(
              (element) =>
                  element.nameMurid
                      .toString()
                      .toLowerCase()
                      .contains(widget.keyword.toLowerCase()) ||
                  element.kelasId.toString().toLowerCase().contains(
                        widget.keyword.toLowerCase(),
                      ),
            )
            .toList();
        if (data2.length == 0) {
          cekData = false;
        }
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
                onSubmitted: (value) {},
              ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  this.isSearching = !this.isSearching;
                });
              },
              icon: !isSearching
                  ? Icon(Icons.search, color: Colors.white)
                  : Icon(Icons.cancel, color: Colors.white)),
        ],
      ),
      body: data2.length == 0
          ? cekData
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Center(
                  child: Text("Student Doesnt Exist"),
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
