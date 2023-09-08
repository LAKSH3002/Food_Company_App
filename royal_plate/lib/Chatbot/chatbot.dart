import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Royalplate_chatbot extends StatelessWidget {
  const Royalplate_chatbot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home()
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> 
{
  late DialogFlowtter dialogFlowtter;
  final TextEditingController _controller = TextEditingController();

  List<Map<String,dynamic>> messaged = [];

  @override
  void initState()
  {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}