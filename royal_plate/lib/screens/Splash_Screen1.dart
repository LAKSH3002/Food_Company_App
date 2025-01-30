import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:royal_plate/screens/Splash_Screen2.dart';
import 'package:flutter/material.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> 
{
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.deepPurple,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.deepPurple,
        // Animated Splash Screen
        child: AnimatedSplashScreen(   
        duration: 3000,
        backgroundColor: Colors.deepPurple,
        // splash - is the animation.
        splash: const Text("WELCOME",
        style: TextStyle(
        fontSize: 35,
        color: Colors.greenAccent,
        letterSpacing: 4,
        fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
        // The Navigation to the next Screen and then Transition to reach there. 
        nextScreen: const SplashScreen2(),
        splashTransition: SplashTransition.fadeTransition),
      ),

    );
  }
}