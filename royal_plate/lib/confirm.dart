import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (
        backgroundColor: Colors.deepPurple,
        elevation: 20,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      
            const SizedBox(height:40),
      
            const Text(
              "    Confirmation Page",
              style: TextStyle(
                fontSize: 20,
              ),),
      
              SizedBox(height: 30),
            
           Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 380,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                // onPressed: (){
                //   Navigator.of(context).push(MaterialPageRoute
                //         (builder: (BuildContext context) =>
                //         const Page1() ));
                // },
                onPressed: (){},
                child:const Text("Confirm Page",
                style: TextStyle(fontSize: 17,color: Colors.white),) ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}