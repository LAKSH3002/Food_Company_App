import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:royal_plate/Email_screen.dart';
import 'package:royal_plate/WalkThrough1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'phone.dart';

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
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.deepPurple,
        // Animated Splash Screen
        child: AnimatedSplashScreen(   
        backgroundColor: Colors.deepPurple,
        // splash - is the animation.
        splash: Column(
          children: [
            const Text("//DANOWAYs//",style: TextStyle(
            fontSize: 30,
            color: Colors.greenAccent,
            letterSpacing: 4,
            fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),

            const Text("You Starve? Order Our Food",style: TextStyle(
            fontSize: 12,
            color: Colors.greenAccent,
            letterSpacing: 3,
            fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
          ],
        ),
        // The Navigation to the next Screen and then Transition to reach there. 
        nextScreen: const OnBoarding4(),
        splashTransition: SplashTransition.fadeTransition),
      )
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