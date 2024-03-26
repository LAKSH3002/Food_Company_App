import 'package:royal_plate/Chatbot/chatbot.dart';
import 'package:royal_plate/HomeScreen.dart';
import 'package:royal_plate/OnBoarding4.dart';
import 'package:royal_plate/Splash_Screen1.dart';
import 'package:flutter/material.dart';
import 'package:royal_plate/Book.dart';

import 'OnBoarding15.dart';
import 'Splash_Screen2.dart';

void main() 
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: SplashScreen1(),
    );
  }
}