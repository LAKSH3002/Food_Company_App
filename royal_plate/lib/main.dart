import 'package:royal_plate/Chatbot/chatbot.dart';
import 'package:royal_plate/HomeScreen.dart';
import 'package:royal_plate/Splash_Screen1.dart';
import 'package:flutter/material.dart';

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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}