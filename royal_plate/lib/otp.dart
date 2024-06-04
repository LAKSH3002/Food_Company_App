import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pinput/pinput.dart';
import 'package:royal_plate/screens/Email_screen.dart';
import 'package:royal_plate/phone.dart';

class MyOtp extends StatefulWidget {
  const MyOtp({super.key});

  @override
  State<MyOtp> createState() => _MyOtpState();
}

class _MyOtpState extends State<MyOtp> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  var code = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(130, 50, 20, 20),
                child: Image.asset(
                  'images/img1.png',
                  width: 150,
                  height: 150,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Pinput(
                  onChanged: (value) {
                    code = value;
                  },
                  mainAxisAlignment: MainAxisAlignment.center,
                  closeKeyboardWhenCompleted: true,
                  length: 6,
                  // defaultPinTheme: defaultPinTheme,
                  showCursor: true,
                  onCompleted: (pin) => print(pin),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 380,
                  height: 45,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.yellowAccent, 
                        backgroundColor: Colors.deepPurple,
                      ),
                      onPressed: () async {
                        try {
                          PhoneAuthCredential credential =
                              PhoneAuthProvider.credential(
                                  verificationId: OnBoarding15.verify,
                                  smsCode: code);
                          // Sign the user in (or link) with the credential
                          await auth.signInWithCredential(credential);
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const OnBoarding4()));
                        } catch (e) {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text("OTP ALERT!!"),
                              content: const Text(
                                  "You Have Entered A wrong OTP, Make Sure Enter The Correct One!!"),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                const MyOtp()));
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(14),
                                    child: const Text("OKAY"),
                                  ),
                                ),
                              ],
                            ),
                          );
                          print('Wrong OTP');
                        }
                        // Navigator.pushNamed(context, 'otp');
                      },
                      child: const Text(
                        "Verify The Code",
                        style: TextStyle(fontSize: 17),
                      )),
                ),
              ),
              const SizedBox(height: 10),
              const SizedBox(height: 175),
            ],
          ),
        ),
      ),
    );
  }
}
