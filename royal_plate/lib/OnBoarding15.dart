import 'package:royal_plate/OnBoarding4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'Color.dart';

class OnBoarding15 extends StatefulWidget {
  const OnBoarding15({super.key});

  @override
  State<OnBoarding15> createState() => _OnBoarding15State();
}

class _OnBoarding15State extends State<OnBoarding15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: 
      Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        
            
              Container(
                height: 310,
                width: 400,
                color: Colors.deepPurple,
                child: const Center(child: Text("DANODALDSS...",
                style: TextStyle(fontSize: 35,color: Colors.greenAccent,
                fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)),
              ),
        
              const SizedBox(height: 20),
        
              const Text(
                "    Login or Signup",
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500
                ),),
        
                const SizedBox(height: 10),
        
              Padding(
                padding: EdgeInsets.all(12.0),
                child: TextField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                                
                                prefixIcon: Icon(Icons.call),
                                hintText: "Enter Phone Number",hintStyle: TextStyle(),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                errorBorder: OutlineInputBorder(),
                              ),
                ),
              ),
        
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 380,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      onPrimary: Colors.yellowAccent
                    ),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute
                          (builder: (BuildContext context) =>
                          const OnBoarding4() ));
                  },
                  child:const Text("Continue",
                  style: TextStyle(fontSize: 17),) ),
                ),
              ),
        
              const SizedBox(height: 175),
        
              const Center(child: Text("By Continuing, You Agree to Our",
              style: TextStyle(color: Colors.black87, fontSize: 17,fontWeight: FontWeight.bold),),),
        
              // const SizedBox(height: 4),
        
               Row(
                 children: [
                   Center(child: CupertinoButton(child: const Text("            Terms Of Service",style: TextStyle(fontSize: 18),), 
                      onPressed:(){
                         
                      } )),
        
                    CupertinoButton(child: const Text("Privacy Policy",
                    style: TextStyle(fontSize: 18),), 
                      onPressed:(){
                         
                      } ),
                 ],
               ),
        
            ],
          ),
        ),
      ),

    );
  }
}