import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_realtime_database/add_user_dialog.dart';
import 'package:flutter_realtime_database/firebase_database_util.dart';
import 'package:flutter_realtime_database/user.dart';

class UserDashboard extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<UserDashboard> implements AddUserCallback {
  bool _anchorToBottom = false;
  late FirebaseDatabaseUtil databaseUtil;

  @override
  void initState() {
    super.initState();
    databaseUtil = FirebaseDatabaseUtil();
    databaseUtil.initState();
  }

  @override
  void dispose() {
    super.dispose();
    databaseUtil.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget _buildTitle(BuildContext context) {
      return InkWell(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Firebase Database',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      );
    }

    List<Widget> _buildActions() {
      return <Widget>[
        // ignore: unnecessary_new
        new IconButton(
          icon: const Icon(
            Icons.group_add,
            color: Colors.white,
          ),
          onPressed: () {}
        ),
      ];
    }

    return Scaffold(
      // ignore: unnecessary_new
      appBar: new AppBar(
        title: _buildTitle(context),
        actions: _buildActions(),
      ),
      // ignore: unnecessary_new
      // body: new FirebaseAnimatedList(
      //   key: ValueKey<bool>(_anchorToBottom),
      //   query: databaseUtil.getUser(),
      //   reverse: _anchorToBottom,
      //   // sort: _anchorToBottom
      //   //     // ? (DataSnapshot a, DataSnapshot b) => b.key!.compareTo(a.key)
      //   //     // : null,
      //   // itemBuilder: (BuildContext context, DataSnapshot snapshot,
      //   //     Animation<double> animation, int index) {
      //   //   return SizeTransition(
      //   //     sizeFactor: animation,
      //   //     child: showUser(snapshot),
      //   //   );
      //   },
      // ),
    );
  }

  @override
  void addUser(User user) {
    setState(() {
      databaseUtil.addUser(user);
    });
  }

  @override
  void update(User user) {
    setState(() {
      databaseUtil.updateUser(user);
    });
  }

  Widget showUser(DataSnapshot res) {
    User user = User.fromSnapshot(res);

    var item = Card(
      child: Container(
          child: Center(
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 30.0,
                  child: Text(getShortName(user)),
                  backgroundColor: const Color(0xFF20283e),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          user.name,
                          // set some style to text
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.lightBlueAccent),
                        ),
                        Text(
                          user.email,
                          // set some style to text
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.lightBlueAccent),
                        ),
                        Text(
                          user.mobile,
                          // set some style to text
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.amber),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(
                        Icons.edit,
                        color: const Color(0xFF167F67),
                      ),
                      onPressed: () => showEditWidget(user, true),
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete_forever,
                          color: const Color(0xFF167F67)),
                      onPressed: () => deleteUser(user),
                    ),
                  ],
                ),
              ],
            ),
          ),
          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0)),
    );

    return item;
  }

  String getShortName(User user) {
    String shortName = "";
    if (!user.name.isEmpty) {
      shortName = user.name.substring(0, 1);
    }
    return shortName;
  }

  showEditWidget(User user, bool isEdit) {
    showDialog(
      context: context,
      builder: (BuildContext context) =>
          AddUserDialog().buildAboutDialog(context, this, isEdit, user),
    );
  }

  deleteUser(User user) {
    setState(() {
      databaseUtil.deleteUser(user);
    });
  }
}
