import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:royal_plate/Splash_Screen2.dart';
import 'package:royal_plate/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> 
{

  @override
  void initState() {
    
    super.initState();

    Timer(const Duration(seconds: 8), () {
      Navigator.pushReplacement(
      context, MaterialPageRoute(
      builder: (context) => const SplashScreen2()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.deepPurple,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.deepPurple,
        child: AnimatedSplashScreen(
        backgroundColor: Colors.deepPurple,
        splash: const Text("WELCOME TO",style: TextStyle(
        fontSize: 25,
        color: Colors.greenAccent,
        letterSpacing: 4,
        fontWeight: FontWeight.bold),), 
        nextScreen: const SplashScreen2(),
        splashTransition: SplashTransition.fadeTransition),
      ),

    );
  }
}