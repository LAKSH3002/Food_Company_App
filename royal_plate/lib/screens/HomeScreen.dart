import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:royal_plate/cart_functionaltiy/Menu_screen.dart';
import 'package:royal_plate/screens/Accounts.dart';
import 'package:royal_plate/Chatbot/chatbot.dart';
import 'package:royal_plate/screens/LoginScreen.dart';
import 'package:royal_plate/Extra_files/Menu.dart';
import 'package:royal_plate/cart_functionaltiy/cart_screen.dart';
import 'package:royal_plate/phone.dart';
import 'package:royal_plate/screens/Email_screen.dart';
import 'package:royal_plate/screens/SetFav_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/services.dart';

class CardItem {
  final String title;

  const CardItem({
    required this.title,
  });
}

class HomeScreen extends StatefulWidget {
  final TextEditingController name;
  final TextEditingController email;
  HomeScreen({super.key, required this.name, required this.email});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController contactcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                child: Icon(Icons.settings, color: Colors.white, size: 30.0),
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => AccountScreen(
                              
                              // phone: contactcontroller,
                            )));
                  });
                }),
          ])),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 10,
            ),

            Text(
              ' Hello ${widget.name.text} !!',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.deepPurple,
                  fontFamily: AutofillHints.addressCity,
                  fontWeight: FontWeight.w400),
            ),

            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text(
                  "   Your Current Location",
                  style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                ),
                SizedBox(
                  width: 100,
                ),
                Icon(Icons.location_on),
                SizedBox(
                  width: 3,
                ),
                Text("Mumbai"),
              ],
            ),

            const SizedBox(
              height: 8,
            ),

            const SizedBox(
              height: 20,
            ),

            // List View 1
            ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // container -1
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.black,
                  ),
                  width: 362,
                  child: Row(
                    children: [
                      Column(
                        children: const [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            " Enjoy Your First     ",
                            style:
                                TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Text(
                            "  order, the taste of   ",
                            style:
                                TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Text(
                            " our delicious food!",
                            style:
                                TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                      Expanded(
                          child: AspectRatio(
                        aspectRatio: 5 / 4.3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset(
                            "images/Food_home.jpeg",
                          ),
                        ),
                      )),
                    ],
                  ),
                ),

                const SizedBox(
                  width: 11,
                ),

                // container-2
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.black,
                  ),
                  width: 362,
                  child: Row(
                    children: [
                      Column(
                        children: const [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "    Enjoy The Best      ",
                            style:
                                TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Text(
                            "   of italian Dishes   ",
                            style:
                                TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Text(
                            "   with Danodaldss..  ",
                            style:
                                TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                      Expanded(
                          child: AspectRatio(
                        aspectRatio: 5 / 4.3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset(
                            "images/Pasta_image.jpeg",
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),

                // container-3
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.black,
                  ),
                  width: 362,
                  child: Row(
                    children: [
                      Column(
                        children: const [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Enjoy The Best of   ",
                            style:
                                TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Text(
                            "  of chinese starters   ",
                            style:
                                TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Text(
                            "with Danodaldss..   ",
                            style:
                                TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                      Expanded(
                          child: AspectRatio(
                        aspectRatio: 6 / 4.3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset(
                            "images/idly_chilli.jpeg",
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: " Search Food/Outlet of Your Choice",
                  hintStyle: TextStyle(color: Colors.red),
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Text(
              '  Popular Items',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
            ),

            Container(
              // color: Color.fromARGB(255, 229, 232, 234),
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  BuildItem('images/Indian_thali.jpeg', 'Default Platter'),
                  BuildItem('images/candies2.jpeg', 'Candies for kids'),
                  BuildItem('images/Default_platter.jpeg', 'Indian Thali'),
                  BuildItem('images/hakka_noodles.jpeg', 'hakka Noodles'),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            const SizedBox(
              height: 10,
            ),

            Text(
              '  Delivery Outlets Near You',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
            ),

            CupertinoButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const Menu_Screen()));
                });
              },
              child: BuildOutletCard(
                  'images/entry.jpeg',
                  ' Byculla West, 1st Cross Lane',
                  Icons.star,
                  '4.2',
                  '2.0 Km',
                  Icons.delivery_dining,
                  '  10% discount'
                  ),
            ),

            const SizedBox(
              height: 10,
            ),

            CupertinoButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const Menu_Screen()));
                });
              },
              child: BuildOutletCard(
                  'images/outlets/outlet.jpeg',
                  ' Bombay Central, Reliance Mart',
                  Icons.star,
                  '3.8',
                  '4.6 Km',
                  Icons.delivery_dining,
                  '  12% discount',
                  ),
            ),

            const SizedBox(
              height: 10,
            ),

            CupertinoButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const Menu_Screen()));
                });
              },
              child: BuildOutletCard(
                  'images/outlets/outlet2.jpeg',
                  '  Breach Candy, Napency Road',
                  Icons.star,
                  '4.6',
                  '7.6 Km',
                  Icons.delivery_dining,
                  '  10% discount',
                  ),
            ),

            const SizedBox(
              height: 10,
            ),

            CupertinoButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const Menu_Screen()));
                });
              },
              child: BuildOutletCard(
                  'images/outlets/outlet3.jpeg',
                  '  Matunga Road, Kings Circle',
                  Icons.star,
                  '4.0',
                  '8.0 Km',
                  Icons.delivery_dining,
                  '  10% discount',
                  ),
            ),

            const SizedBox(
              height: 20,
            ),

            Text(
              'GET DELICIOUS FOOD WITH OUR EXCELLENT SERVICE!!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ]),
        ),
      ),

      // drawer
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),

              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text(
                  '${widget.name.text}',
                  style: TextStyle(
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      color: Colors.yellowAccent),
                ),
                accountEmail: Text(
                  "${widget.email.text}",
                  style: TextStyle(fontSize: 22, color: Colors.yellowAccent),
                ),
                currentAccountPictureSize: Size.square(40),
              ),
              // child:Text('Select your Shows',style: TextStyle(color:Colors.greenAccent,fontSize: 22,),),
            ),
            ListTile(
              title: const Text('Your Cart'),
              leading: const Icon(Icons.shopping_cart),
              onTap: () {
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const CartScreen()));
                });
              },
            ),
            ListTile(
              title: Text('Set Favourite Food'),
              leading: Icon(Icons.food_bank_outlined),
              onTap: () {
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const SetFavouritehome()));
                });
              },
            ),
            ListTile(
              title: Text('Chat WIth Us'),
              leading: Icon(Icons.chat_bubble),
              onTap: () {
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const Royalplate_chatbot()));
                });
              },
            ),
            ListTile(
              title: Text('Your Account'),
              leading: Icon(Icons.person),
              onTap: () {
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => AccountScreen(
                            
                            // phone: contactcontroller,
                          )));
                });
              },
            ),
        
            ListTile(
              title: Text('Log Out'),
              leading: Icon(Icons.logout_sharp),
              onTap: () {
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const Login_Screen()));
                });
              },
            ),
          ],
        ),
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   items: const <BottomNavigationBarItem>[

      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_cart,color: Colors.blue),
      //       label: 'Your Cart',
      //     ),

      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_cart,color: Colors.blue),
      //       label: 'Your Cart',
      //     ),

      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.reviews,color:Colors.blue,),
      //       label: 'Review/Complain',
      //     ),

      //   ],

      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.amber[800],
      //   onTap: (int index)
      //   {
      //     setState(() {
      //       _selectedIndex = index;
      //     });
      //   },
      // ),
    );
  }
}

Widget BuildItem(image, title) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      child: Column(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 14 / 8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(image, fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
            title,
            style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          )),
        ],
      ),
    ),
  );
}

Widget BuildOutletCard(
    image, Head, icon1, rate, distance, icon2, discount,) {
  return Card(
    margin: EdgeInsets.all(4.0),
    // color: Color.fromARGB(255, 223, 218, 223),
    elevation: 15,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image.asset(
            image,
            fit: BoxFit.fitWidth,
            width: 350,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          Head,
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Icon(icon1),
            SizedBox(
              width: 10,
            ),
            Text(
              rate,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              width: 80,
            ),
            Text(
              distance,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              width: 65,
            ),
            Icon(
              icon2,
              size: 30,
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Text(
              discount,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 90,
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
      ],
    ),
  );
}

// HomeScreen done
// Accounts Page Done
// Menu Page 80 percent done

// chatbot page UI left.
// Review page to be added

// things not working
// Addition and subraction of food item on home page
// user login details check(authentication).