// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_login_google/google_signin.dart';
import 'package:firebase_login_google/loggedinwidget.dart';

import 'package:firebase_login_google/signup.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            // } else if(snapshot.hasData){
            //   return LoggedInWidget();
            } else if (snapshot.hasError){
              return Center(child: Text("Something Went Wrong"),);
            } else{
            return SignUpWidget();
            }
            // if (snapshot.hasData) {
            //   return LoggedInWidget();
            // } else{
            //   return  SignUpWidget();
            // }
          }),
    );
  }
}

