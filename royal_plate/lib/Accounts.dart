import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:royal_plate/HomeScreen.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlue,
        child: Column(
          children: [
            // children 1
            // container with profile details.
            Container(
              color: Colors.red,
              width: 395,
              height: 60,
            ),

            CupertinoButton(
            child: Row(
              children: [
                Icon(Icons.arrow_back,
                color: Colors.white,),
              ],
            ),
            onPressed: (){
              setState(() {
                Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) => 
                const HomeScreen()));
              });
            }),

            Padding(
            padding: EdgeInsets.all(4.0),
            child: Container(
              color: Colors.white,
              height: 180,
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                  Row(children: [
                    SizedBox(width: 10,),
                    Icon(Icons.account_circle,
                    size: 80.0,
                    color: Colors.black54,),
                  SizedBox(width: 15,),
                  Text("Laksh Doshi",style: TextStyle(fontSize: 30,),),
                  ],),
                  SizedBox(height: 10,),
                  Text("  Email: lakshd1999@gmail.com",style: TextStyle(fontSize: 18,fontStyle: FontStyle.italic),),
                  SizedBox(height: 10,),
                  Text("  Contact: 9867900994",style: TextStyle(fontSize: 18,fontStyle: FontStyle.italic),),
                ],
              ),
            ),),

            ListView(

            )
          ],
        ),
      ),
    );
  }
}