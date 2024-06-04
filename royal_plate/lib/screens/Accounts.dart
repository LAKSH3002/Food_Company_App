import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:royal_plate/screens/HomeScreen.dart';
// This is the Accounts Screen

class AccountScreen extends StatefulWidget {
  // final TextEditingController phone;
  const AccountScreen({
    super.key,
    
  });

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController contactcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Row(children: [
            const Text(
              "DANODALDS",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 93,
            ),
            CupertinoButton(
                child: Icon(Icons.home, color: Colors.white, size: 30.0),
                onPressed: () {
                  setState(() {
                    Navigator.of(context).pop(MaterialPageRoute(
                        builder: (BuildContext context) => HomeScreen(
                              name: namecontroller,
                              email: emailcontroller,
                            )));
                  });
                }),
          ])),
          
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              // children 1
              // container with profile details.

              // Padding(
              //   padding: EdgeInsets.all(0),
              //   child: Container(
              //     color: Color.fromARGB(255, 194, 197, 199),
              //     height: 180,
              //     width: 400,
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         SizedBox(
              //           height: 15,
              //         ),
              //         Row(
              //           children: [
              //             SizedBox(
              //               width: 10,
              //             ),
              //             Icon(
              //               Icons.account_circle,
              //               size: 80.0,
              //               color: Colors.black54,
              //             ),
              //             SizedBox(
              //               width: 15,
              //             ),
              //             Text(
              //               'Name: ${widget.name.text}',
              //               style: TextStyle(
              //                   fontSize: 25, fontWeight: FontWeight.bold),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Text(
              //           '  Email: ${widget.email.text}',
              //           style: TextStyle(fontSize: 18),
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Text(
              //           "  Contact: ",
              //           style: TextStyle(fontSize: 18),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),

              Box(Icons.restaurant, 'Outlets', Icons.keyboard_arrow_right,
                  226.0),
              SizedBox(
                height: 1,
              ),
              Box(Icons.info, 'About Us', Icons.keyboard_arrow_right, 211.0),
              SizedBox(
                height: 1,
              ),
              Box(Icons.amp_stories, 'Stories', Icons.keyboard_arrow_right,
                  225.0),
              SizedBox(
                height: 1,
              ),
              Box(Icons.border_outer_outlined, 'Your Orders',
                  Icons.keyboard_arrow_right, 194.0),
              SizedBox(
                height: 1,
              ),
              Box(Icons.text_format_sharp, 'Terms and Conditions',
                  Icons.keyboard_arrow_right, 130.0),
              SizedBox(
                height: 1,
              ),
              Box(Icons.policy, 'Privacy Policy', Icons.keyboard_arrow_right,
                  182.0),
              SizedBox(
                height: 1,
              ),
              Box(Icons.question_answer, 'FAQs', Icons.keyboard_arrow_right,
                  237.0),
              SizedBox(
                height: 1,
              ),
              Box(Icons.help_center, 'Help & Support',
                  Icons.keyboard_arrow_right, 174.0),
              Box(Icons.payment_outlined, 'Payment settings',
                  Icons.keyboard_arrow_right, 159.0),
              Box(Icons.language_outlined, 'Choose language',
                  Icons.keyboard_arrow_right, 159.0),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Box(icon1, textt, icon2, width2) {
  return Container(
    color: Color.fromARGB(255, 240, 241, 238),
    height: 80,
    child: Row(
      children: [
        SizedBox(
          width: 15,
        ),
        Icon(icon1),
        SizedBox(
          width: 20,
        ),
        Text(textt),
        SizedBox(
          width: width2,
        ),
        Icon(icon2),
      ],
    ),
  );
}
