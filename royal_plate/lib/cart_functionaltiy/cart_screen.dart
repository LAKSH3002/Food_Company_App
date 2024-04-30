import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Danodalds - Cart Page',
          style: TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 47, 235, 54),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
    );
  }
}
