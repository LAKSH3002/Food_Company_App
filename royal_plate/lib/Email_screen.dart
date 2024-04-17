import 'package:firebase_auth/firebase_auth.dart';
import 'package:royal_plate/Accounts.dart';
import 'package:royal_plate/Chatbot/chatbot.dart';
import 'package:royal_plate/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:email_validator/email_validator.dart';
import 'package:royal_plate/LoginScreen.dart';

class OnBoarding4 extends StatefulWidget {
  const OnBoarding4({super.key});

  @override
  State<OnBoarding4> createState() => _OnBoarding4State();
}

class _OnBoarding4State extends State<OnBoarding4> 
{
  // text editing controller
  bool passwordVisible = true;
  TextEditingController emailcontroller = TextEditingController();
  // TextEditingController confirmpasswordcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    emailcontroller.dispose();
    super.dispose();
  }

  @override

  // Method to validate the email the take
  // the user email as an input and 
  // print the bool value in the console.
  // Function to validate email id.
  void Validate(String email) {
    bool isvalid = EmailValidator.validate(email);
    print(isvalid);
  }

   @override
  void initState() {
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar
      (
        backgroundColor: Colors.deepPurple,
        elevation: 5,
        title: Text('DANODALDS',style: TextStyle(
        color: Colors.greenAccent,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height:25),
      
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: const Text(
                "Enter The Following Details to get Started with the App",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
            ),
      
              SizedBox(height: 25),
      
            Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              hintText: "Enter Your Full name*",
                              errorText: _validate ? 'Name filed is required' : null,
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
                controller: emailcontroller,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  errorText: _validate ? 'Email id is required' : null,
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
                controller: passwordcontroller,
                obscureText: passwordVisible,
                decoration: InputDecoration(
                  errorText: _validate ? 'Password is Required' : null,
                              prefixIcon: Icon(Icons.password_rounded),
                              hintText: "Create Your Own Password*",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0)
                              ),
                              errorBorder: OutlineInputBorder(),
                              helperText:"Password must be 6 characters long",
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

            // Padding(
            //   padding: EdgeInsets.all(12.0),
            //   child: TextField(
            //     controller: confirmpasswordcontroller,
            //     obscureText: passwordVisible,
            //     decoration: InputDecoration(
            //                   errorText: _validate ? 'Please confirm your password' : null,
            //                   prefixIcon: Icon(Icons.password_rounded),
            //                   hintText: "Confirm Password*",
            //                   // helperText: 'Confirm password must match Create Password',
            //                   border: OutlineInputBorder(
            //                     borderRadius: BorderRadius.circular(25.0)
            //                   ),
            //                   errorBorder: OutlineInputBorder(),
            //                   suffixIcon: IconButton(
            //         icon: Icon(passwordVisible
            //              ? Icons.visibility_off
            //              : Icons.visibility),
            //          onPressed: () {
            //            setState(
            //              () {
            //                passwordVisible = !passwordVisible;
            //              },
            //            );
            //          },
            //        ),
            //                 ),
            //       keyboardType: TextInputType.visiblePassword,
            //       textInputAction: TextInputAction.done
            //   ),
            // ),
      
            const SizedBox(height: 50),

            TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute
                      (builder: (BuildContext context) =>
                      const Login_Screen() ));
            }, child: Text('      Already Have an Account?? Log_In',
            style: TextStyle(fontSize: 19),)),

            const SizedBox(height: 65,),

            //  ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => 
            //         HomeScreen(
            //         name: namecontroller,
            //         email: emailcontroller,),
            //       ),
            //     );
            //     // setState(() {
            //     //   Navigator.push(
            //     //   context,
            //     //   MaterialPageRoute(
            //     //     builder: (context) => 
            //     //     AccountScreen(
            //     //     name: namecontroller,
            //     //     email: emailcontroller,),
            //     //   ),
            //     // );
            //     // });
            //   },
            //   child: Text('Go to Second Page'),
            // ),
      
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
                // User entry with email and password.  
                onPressed: () async
                {
                try
                  {
                    setState(() {
                     
                      namecontroller.text.isEmpty ? _validate = true : _validate = false;
                      emailcontroller.text.isEmpty ? _validate = true : _validate = false;
                      passwordcontroller.text.isEmpty ? _validate = true : _validate = false;
                      // confirmpasswordcontroller.text.isEmpty ? _validate = true : _validate = false;
                    });
                    
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: emailcontroller.text,
                  password: passwordcontroller.text).then((value) 
                  {
                    print("New Account Created");
                    showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                title: const Text("Successful registration!!"),
                content: const Text("You have Created A New Account!!"),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute
                      (builder: (BuildContext context) =>
                      HomeScreen(
                      name: namecontroller,
                      email: emailcontroller,) )).onError((error, stackTrace){
                      });
                    },
                    child: Container(
                      color: Colors.green,
                      padding: const EdgeInsets.all(14),
                      child: const Text("okay"),
                    ),
                  ),
                ],
              ),
            );
                  });
                  }
                  catch(e)
                  {
                    print(e);
                    print("Incomplete Entries");
                  }
                },
                child:const Text("Proceed to App",
                style: TextStyle(fontSize: 22,fontStyle: FontStyle.italic),) ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
  Widget dialogbox()
  {
    return Container(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                title: const Text("Successful registration!!"),
                content: const Text("You have Created A New Account!!"),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute
                      (builder: (BuildContext context) =>
                      HomeScreen(
                      name: namecontroller,
                      email: emailcontroller,) )).onError((error, stackTrace){
                      });
                    },
                    child: Container(
                      color: Colors.green,
                      padding: const EdgeInsets.all(14),
                      child: const Text("okay"),
                    ),
                  ),
                ],
              ),
            );
  }, 
  child: null,)
  );
  }
}

// Email Validation done.
// Password Validation done.
// Password icon visibility on and off done.
// Now Firebase Authentiaction done.
// Firebase Auth done.
// Navigating to home screen on successful registration done.