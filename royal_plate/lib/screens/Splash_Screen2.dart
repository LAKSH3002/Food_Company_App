import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:royal_plate/screens/Email_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    // final screenwidth = MediaQuery.of(context).size.width;
    // final screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.deepPurple,
      // Animated Splash Screen
      child: AnimatedSplashScreen(
          duration: 3000,
          backgroundColor: Colors.deepPurple,
          // splash - is the animation.
          splash: Column(
            children: [
              const Text(
                "/DANODALDS/",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.greenAccent,
                    letterSpacing: 4,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              const Text(
                "You Starve? Order Our Food",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.greenAccent,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
          // The Navigation to the next Screen and then Transition to reach there.
          nextScreen: const OnBoarding4(),
          splashTransition: SplashTransition.fadeTransition),
    ));
  }
}
