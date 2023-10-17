import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:royal_plate/WalkThrough1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 8), () {
      Navigator.pushReplacement(
      context, MaterialPageRoute(
      builder: (context) => Walkthrough()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
      backgroundColor: Colors.deepPurple,
      splash: Center(
        child: Column(
          children: [
              Container(
              child: const Center(
              child: Text("Royal Plate",
              style: TextStyle(
              color: Colors.greenAccent,
              letterSpacing: 2,
              fontSize: 40,
              fontWeight:FontWeight.w500,
              fontStyle: FontStyle.italic ),)),
              ),
        
              Container(
             child: const Text(
             "You customise, We Cater",
              style: TextStyle(
              letterSpacing: 1,
              color: Colors.greenAccent,
              fontSize: 14,
              fontWeight:FontWeight.w400,
              fontStyle: FontStyle.italic
          ),
              )
              )
          ],
        ),
      ),

      // Next Screen Details.
      nextScreen: const Walkthrough(),
      splashTransition: SplashTransition.fadeTransition,),
    );
        
              
        
          //     Container(
          //     child: const Center(
          //     child: Text("Craft My Plate",
          //     style: TextStyle(
          //     color: Colors.greenAccent,
          //     fontSize: 40,
          //     fontWeight:FontWeight.w500,
          //     fontStyle: FontStyle.italic ),)),
          //     ),
        
          //     Container(
          // child: const Text(
          //   "You customise, We Cater",
          //   style: TextStyle(
          //     letterSpacing: 1,
          //     color: Colors.greenAccent,
          //     fontSize: 14,
          //     fontWeight:FontWeight.w400,
          //     fontStyle: FontStyle.italic
          // ),
          //     )
          //     )
            
}
}