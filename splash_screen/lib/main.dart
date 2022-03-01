// ignore_for_file: prefer_const_constructors

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Splash Screen",
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash:Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Icon(Icons.home),
          Text("Travel App", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black54),)
        ],
      ),
      backgroundColor: Colors.white,
      nextScreen: LoadingScreen(),
      duration: 4000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
      animationDuration: Duration(seconds: 1),
    );
  }
}

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('images/lottie.json'), 
      nextScreen: Home(),
      backgroundColor: Colors.white,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
      duration: 3000,
      animationDuration: Duration(seconds: 1),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome Home"),
      ),
    );
  }
}
