import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:royal_plate/confirm.dart';


class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
              "    ISSUE PAGE",
              style: TextStyle(
                fontSize: 20,
              ),),
      
              SizedBox(height: 30),
      
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                              prefixIcon: Icon(Icons.calendar_month),
                              hintText: "Issue Date*",
                              border: OutlineInputBorder(),
                              errorBorder: OutlineInputBorder(),
                            ),
              ),
            ),
      
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                              prefixIcon: Icon(Icons.insert_drive_file),
                              hintText: "Book ID*",
                              border: OutlineInputBorder(),
                              errorBorder: OutlineInputBorder(),
                            ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                              prefixIcon: Icon(Icons.roller_shades),
                              hintText: "Student Roll Number*",
                              
                              border: OutlineInputBorder(),
                              errorBorder: OutlineInputBorder(),
                            ),
              ),
            ),
      
            const SizedBox(height: 130),
      
           Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 380,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute
                        (builder: (BuildContext context) =>
                        const Page3() ));
                },
                child:const Text("Next",
                style: TextStyle(fontSize: 17,color: Colors.white),) ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}