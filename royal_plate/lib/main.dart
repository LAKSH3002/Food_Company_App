import 'package:provider/provider.dart';
import 'package:royal_plate/Chatbot/chatbot.dart';
import 'package:royal_plate/cart_functionaltiy/Menu_screen.dart';
import 'package:royal_plate/cart_functionaltiy/cart_provider.dart';
import 'package:royal_plate/cart_functionaltiy/cart_screen.dart';
import 'package:royal_plate/otp.dart';
import 'package:royal_plate/screens/Accounts.dart';
import 'package:royal_plate/screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:royal_plate/Extra_files/Menu.dart';
import 'package:royal_plate/phone.dart';
import 'package:royal_plate/screens/Splash_Screen1.dart';
import 'screens/LoginScreen.dart';
import 'screens/Email_screen.dart';
import 'screens/Splash_Screen2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Firebase/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    name.text = 'laksh';
    TextEditingController email = TextEditingController();
    email.text = 'laksh123@gmail.com';
    return ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: Builder(builder: (BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(useMaterial3: true),
          home: SplashScreen1(),
        );
      }),
    );
  }
}
