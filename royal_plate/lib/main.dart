import 'package:royal_plate/Chatbot/chatbot.dart';
import 'package:royal_plate/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:royal_plate/phone.dart';
import 'package:royal_plate/Splash_Screen1.dart';
import 'package:royal_plate/review.dart';
import 'LoginScreen.dart';
import 'Email_screen.dart';
import 'Splash_Screen2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async 
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: SplashScreen1(),
    );
  }
}