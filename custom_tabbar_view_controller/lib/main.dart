// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 6, vsync: this);


    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, top: 30),
            width: MediaQuery.of(context).size.width,
            // color: Colors.amber,
            height: 80,
            child: Text(
              "Discover",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                // padding: EdgeInsets.only(left: 20, right: 20),
                controller: _tabcontroller,
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                labelPadding: EdgeInsets.only(left: 20, right: 20),
                tabs: [
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "History",
                  ),
                  Tab(
                    text: "Favorite",
                  ),
                  Tab(
                    text: "Place",
                  ),
                  Tab(
                    text: "History",
                  ),
                  Tab(
                    text: "Favorite",
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 300,
            child: TabBarView(
              controller: _tabcontroller,
              children: [
                ListView.builder(itemBuilder: (context, index) {
                  return Container(
                    
                  );
                },)
              ],
            ),
          )
        ],
      ),
    );
  }
}

// class CircleTabIndicator extends Decoration {
//   final Color color;
//   double radius;

//   CircleTabIndicator({required this.color, required this.radius});

//   @override
//   BoxPainter createBoxPainter([VoidCallback? onChanged]){
//     return _CirclePainter(color:color, radius:radius);
//   }
// }
