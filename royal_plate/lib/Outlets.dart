import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Outlets extends StatefulWidget {
  const Outlets({super.key});

  @override
  State<Outlets> createState() => _OutletsState();
}

class _OutletsState extends State<Outlets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (
        backgroundColor: Colors.deepPurple,
        title: const Text("Royal Plates - Outlets"),
      ),

      body: Center(
        child: Column
        (
          children: [

            // children 1  
            SizedBox(
            height: 263,
            child: Image.asset("images/entry.jpeg",fit: BoxFit.cover,)),
          
            // children 2
            Container(
              color: Color.fromARGB(255, 209, 215, 215),
              width: 400,
              height: 72,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(height: 8,),
                  Text("  Royal Plates",
                  style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24,color: Colors.deepPurple),),
            
                  SizedBox(height: 12,),
                  Text("   Healthy Food, Best Italian & Mexcican food with Indian",
                  style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic),),
                ],
              ),
            ),

            // children 3

          ],
        ),
      ),
    );
  }
}