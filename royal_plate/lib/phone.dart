import 'package:firebase_core/firebase_core.dart';
import 'package:royal_plate/Email_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:royal_plate/otp.dart';

import 'Color.dart';

class OnBoarding15 extends StatefulWidget {
  const OnBoarding15({super.key});

  static String verify="";

  @override
  State<OnBoarding15> createState() => _OnBoarding15State();
}

class _OnBoarding15State extends State<OnBoarding15> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    TextEditingController _countrycodecontroller = TextEditingController();
    var phone = '';

  void initState() {
    _countrycodecontroller.text = "+91";
    super.initState();
  }

    return Scaffold(

      body: 
      Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
            
              Container(
                height: 270,
                width: 400,
                color: Colors.deepPurple,
                child: const Center(child: Text("DANODALDS",
                style: TextStyle(fontSize: 35,color: Colors.greenAccent,
                fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)),
              ),
        
              const SizedBox(height: 20),

              // Text('$screenwidth'),
              // Text('$screenheight'),
        
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 0, 5, 0),
                child: const Text(
                  "We need to register your phone before getting started",
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500
                  ),),
              ),
                const SizedBox(height: 10),
        
              Padding(
                padding: EdgeInsets.all(12.0),
                child: TextFormField(
                  onChanged: (value){
                    phone = value;
                  },
                  keyboardType: TextInputType.phone,
                  controller: _countrycodecontroller,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                                
                                prefixIcon: Icon(Icons.call),
                                hintText: "Enter Contact Number",hintStyle: TextStyle(),
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
                      onPrimary: Colors.yellowAccent,
                    ),
                  onPressed: () async{
                  await FirebaseAuth.instance.verifyPhoneNumber(
                  phoneNumber: '${phone}',
                  verificationCompleted: (PhoneAuthCredential credential){}, 
                  verificationFailed: (FirebaseAuthException e){}, 
                  codeSent: (String verificationId, int? forceResendingToken) {
                    OnBoarding15.verify=verificationId;
                    Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context)=>
                  const MyOtp()));
                  }, 
                  codeAutoRetrievalTimeout: (String verificationId) {});
                    // Navigator.pushNamed(context, 'otp');
                  },
                  child:const Text("Send The Code",
                  style: TextStyle(fontSize: 17),) ),
                ),
              ),
        
              const SizedBox(height: 175),
        
              // const Center(child: Text("By Continuing, You Agree to Our",
              // style: TextStyle(color: Colors.black87, fontSize: 17,fontWeight: FontWeight.bold),),),
        
              // // const SizedBox(height: 4),
        
              //  Row(
              //    children: [
              //      Center(child: CupertinoButton(child: const Text("       Terms Of Service",style: TextStyle(fontSize: 18),), 
              //         onPressed:(){
                         
              //         } )),
        
              //       CupertinoButton(child: const Text("Privacy Policy",
              //       style: TextStyle(fontSize: 18),), 
              //         onPressed:(){
                         
              //         } ),
              //    ],
              //  ),
            ],
          ),
        ),
      ),

    );
  }
}