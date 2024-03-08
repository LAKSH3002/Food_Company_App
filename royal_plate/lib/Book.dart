import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:royal_plate/Issue.dart';


class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (
        backgroundColor: Colors.deepPurple,
        elevation: 5,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      
            const SizedBox(height:40),
      
            const Text(
              "   BOOK PAGE!",
              style: TextStyle(
                fontSize: 20,
              ),),
      
              SizedBox(height: 30),
      
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                              prefixIcon: Icon(Icons.book),
                              hintText: "Book Name",
                              border: OutlineInputBorder(),
                              errorBorder: OutlineInputBorder(),
                            ),
              ),
            ),
      
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                              prefixIcon: Icon(Icons.published_with_changes_rounded),
                              hintText: "Publisher Name*",
                              border: OutlineInputBorder(),
                              errorBorder: OutlineInputBorder(),
                            ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                              prefixIcon: Icon(Icons.add_a_photo),
                              hintText: "Branch",
                              border: OutlineInputBorder(),
                              errorBorder: OutlineInputBorder(),
                            ),
              ),
            ),
      
          const SizedBox(height: 130),
      
           Padding(
              padding: const EdgeInsets.all(14.0),
              child: SizedBox(
                width: 180,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute
                        (builder: (BuildContext context) =>
                        const Page2() ));
                },
                child:const Text("NEXT PAGE",
                style: TextStyle(fontSize: 17,color: Colors.white),) ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}