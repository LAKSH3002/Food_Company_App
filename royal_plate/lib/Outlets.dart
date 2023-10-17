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
        title: const Text("Royal Plates - Outlets",style: TextStyle(color: Colors.white),),
      ),

      body: Center(
        child: ListView
        (
          children: [

            // children 1  
            SizedBox(
            height: 262,
            child: Image.asset("images/entry.jpeg",fit: BoxFit.cover,)),

            SizedBox(height: 12,),

            Text("  Royal Plate Outlets",style: TextStyle(fontSize: 20,color: Colors.purple,fontWeight: FontWeight.w500),),

            SizedBox(height: 30,),

            // children 3
            Container(
              color: Color.fromARGB(210, 241, 239, 239),
              width: 400,
              height: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(height: 8,),
                  Text(" >> Byculla West",
                  style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24,color: Colors.deepPurple),),
            
                  SizedBox(height: 12,),
                  Text("   703,Kinjal Tower,NM Joshi Marg, Byculla west.",
                  style: TextStyle(fontSize: 14,fontStyle: FontStyle.italic),),
                ],
              ),
            ),

            SizedBox(height: 12,),

            // Children 4
            Container(
              color: Color.fromARGB(210, 241, 239, 239),
              width: 400,
              height: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(height: 8,),
                  Text(" >> Phoenix Palladium",
                  style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24,color: Colors.deepPurple),),
            
                  SizedBox(height: 12,),
                  Text("   Palladium Shop Number 24, 2nd floor, Mumbai.",
                  style: TextStyle(fontSize: 14,fontStyle: FontStyle.italic),),
                ],
              ),
            ),

            SizedBox(height: 12,),

            // children 5
            Container(
              color: Color.fromARGB(210, 241, 239, 239),
              width: 400,
              height: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(height: 8,),
                  Text(" >> Sterling Theatres",
                  style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24,color: Colors.deepPurple),),
            
                  SizedBox(height: 12,),
                  Text("   Near Chatrapati Shivaji Terminus,Mumbai.",
                  style: TextStyle(fontSize: 14,fontStyle: FontStyle.italic),),
                ],
              ),
            ),

            SizedBox(height: 12,),

            // Children 6
            Container(
              color: Color.fromARGB(210, 241, 239, 239),
              width: 400,
              height: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(height: 8,),
                  Text(" >> Charni Road East",
                  style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24,color: Colors.deepPurple),),
            
                  SizedBox(height: 12,),
                  Text("   In lane of Hinduja College, Mumbai.",
                  style: TextStyle(fontSize: 14,fontStyle: FontStyle.italic),),
                ],
              ),
            ),

            SizedBox(height: 10,),
            

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent
              ),
            onPressed: (){
              
            }, 
            child: Text("Navigate Outlets",style: TextStyle(fontSize: 20,color: Colors.red),))
          ],
        ),
      ),
    );
  }
}