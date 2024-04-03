import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:royal_plate/HomeScreen.dart';
import 'package:royal_plate/OnBoarding4.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
   bool passwordVisible = false;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller =  TextEditingController();
  @override

  // Function to validate email id.
  void Validate(String email) {
    bool isvalid = EmailValidator.validate(email);
    print(isvalid);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (
        backgroundColor: Colors.deepPurple,
        elevation: 5,
        title: Text('Danodaldss..',
        style: TextStyle(fontSize: 20,color: Colors.greenAccent,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      
            const SizedBox(height:50),
            Center(child: Image.asset('images/trace.jpeg')),
      
              SizedBox(height: 20),
      
            Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                controller: emailcontroller,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              hintText: "Enter Your Email id*",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0)
                              ),
                              errorBorder: OutlineInputBorder(),
                            ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                obscureText: passwordVisible,
                decoration: InputDecoration(
                              prefixIcon: Icon(Icons.password_rounded),
                              hintText: "Create Your Own Password*",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0)
                              ),
                              errorBorder: OutlineInputBorder(),
                              // helperText:"Password must contain special character",
                    suffixIcon: IconButton(
                    icon: Icon(passwordVisible
                         ? Icons.visibility_off
                         : Icons.visibility),
                     onPressed: () {
                       setState(
                         () {
                           passwordVisible = !passwordVisible;
                         },
                       );
                     },
                   ),
                            ),
                 keyboardType: TextInputType.visiblePassword,
                 textInputAction: TextInputAction.done
              ),
            ),
      
            const SizedBox(height: 40),
      
           Row(
             children: [
              const SizedBox(width: 65,),
               Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 100,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        onPrimary: Colors.yellowAccent
                      ),
                    onPressed: ()
                    {
                      Validate(emailcontroller.text);
                      Navigator.of(context).push(MaterialPageRoute
                            (builder: (BuildContext context) =>
                            const HomeScreen() ));
                    },
                    child:const Text("Login",
                    style: TextStyle(fontSize: 22,fontStyle: FontStyle.italic),) ),
                  ),
                ),

                ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute
                            (builder: (BuildContext context) =>
                            const OnBoarding4() ));
                }, child: Text('SIGN UP',
                style: TextStyle(fontSize: 22,color: Colors.green),),
                )
             ],
           ),
            
          ],
        ),
      ),
    );
  }
}