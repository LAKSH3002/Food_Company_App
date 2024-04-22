import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class review extends StatefulWidget {
  const review({super.key});

  @override
  State<review> createState() => _reviewState();
}

class _reviewState extends State<review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // AppBar takes a Text Widget
        // in it's title parameter
        title: const Text('Rating Page'),
        backgroundColor: Colors.red,
      ),

      body: Column(children: [

        SizedBox(
          height: 30,
        ),

        Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 30),
          child: Row(
            children: [
              Text("Hello This is the REVIEW Page for Danodaldss..")
            ],
          ),
        ),

        ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 20,
                ),
              ],
            );
          },
        ),
        
        SizedBox(
          height: 20,
        ),
        // Text("Enter Feedback",style: TextStyle(fontSize: 20),),
        SizedBox(
          height: 20,
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: TextFormField(
            minLines: 8,
            maxLines: null,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
                alignLabelWithHint: true,
                border: OutlineInputBorder(),
                labelText: 'Feedback',
                hintText: "Enter Feedback"),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
        onPressed: (){}, 
        child: Text("Submit Feedback"))
      ]),
    );
  }
}