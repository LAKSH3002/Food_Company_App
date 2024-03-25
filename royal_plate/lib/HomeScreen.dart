import 'package:flutter/cupertino.dart';
import 'package:royal_plate/Accounts.dart';
import 'package:royal_plate/Chatbot/chatbot.dart';
import 'package:royal_plate/OnBoarding15.dart';
import 'package:royal_plate/OnBoarding4.dart';
import 'package:royal_plate/Outlets.dart';
import 'package:royal_plate/SetFav_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/services.dart';

class CardItem{
  final String urlImage;
  final String title;

  const CardItem({
    required this.urlImage,
    required this.title,
  });
}

class HomeScreen extends StatefulWidget 
{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> 
{
List<CardItem> items =  [
  CardItem(
    urlImage: "images/Paneer_chilli.jpeg",
    title: "Paneer chilli"
  ),

  CardItem(
    urlImage: "images/idly_chilli.jpeg",
    title: "Idly Chilli"
  ),

  CardItem(
    urlImage: "images/gobi.jpeg",
    title: "Gobi Manchurian" 
  ),

  CardItem(
    urlImage: "images/veg_crispy.jpeg", 
    title: "Veg Crispy"
  ),

  CardItem(
    urlImage: "images/Veggies_fry.jpeg", 
    title: "Veggies Fry"
  ),

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Row(
          children: 
          [
            const Text("Danodaldss..",style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.bold),),
            SizedBox(width: 110,),
            
            CupertinoButton(
              child: Icon(Icons.account_circle,
              color: Colors.white,
              size:30.0),
              onPressed: (){
                setState(() {
                  Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context)=>
                  const AccountScreen()));
                });
              }),
          ]
            )
        ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 10,),

              const Text(" Hi, Laksh!",
              style: TextStyle(fontSize: 40,color:Colors.deepPurple,
              fontFamily: AutofillHints.addressCity,
              fontWeight: FontWeight.w400),) ,

              const SizedBox(height: 10,),  
              Row(children: const [
                  Text("   Your Current Location",
              style: TextStyle(fontSize: 15,color:Colors.blueGrey),),

                SizedBox(width: 120,),

                  Icon(Icons.location_on),

                SizedBox(width: 3,),

                  Text("Mumbai"),

              ],),
              
              const SizedBox(height: 8,),

              const SizedBox(height: 20,), 

              // List View 1
              Container(
                // color: Colors.red,
              height: 136 ,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [

                // container -1
                Container(
                decoration: BoxDecoration
                (
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.black,
                ),
                 width: 362,
                 child: Row(
              children: [
              Column(
            children: const [

           SizedBox(height: 30,),

           Text(" Enjoy Your First     ",
           style: TextStyle(fontSize: 16,color:Colors.white),),

           Text("  order, the taste of   ",
           style: TextStyle(fontSize: 16,color: Colors.white),),

           Text(" our delicious food!",
           style: TextStyle(fontSize: 16,color: Colors.white),),
        ],
       ),

                           Expanded(
                          child: AspectRatio(aspectRatio: 5/4.3,
                          child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset("images/Food_home.jpeg",), ),)),
                          ],
  ),),

                  const SizedBox(width: 11,),
                  
                  // container-2
                  Container(
                decoration: BoxDecoration
                (
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.black,
                ),
                 width: 362,
                 child: Row(
              children: [
              Column(
            children: const [

           SizedBox(height: 30,),

           Text("    Enjoy The Best      ",
           style: TextStyle(fontSize: 16,color:Colors.white),),

           Text("   of italian Dishes   ",
           style: TextStyle(fontSize: 16,color: Colors.white),),

           Text("   with Danodaldss..  ",
           style: TextStyle(fontSize: 16,color: Colors.white),),
        ],
       ),

                           Expanded(
                          child: AspectRatio(aspectRatio: 5/4.3,
                          child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset("images/Pasta_image.jpeg",), ),)),
                          ],
  ),),
                  SizedBox(width: 5,),

                   // container-3
                  Container(
                decoration: BoxDecoration
                (
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.black,
                ),
                 width: 362,
                 child: Row(
              children: [
              Column(
            children: const [

           SizedBox(height: 30,),

           Text("Enjoy The Best of   ",
           style: TextStyle(fontSize: 16,color:Colors.white),),

           Text("  of chinese starters   ",
           style: TextStyle(fontSize: 16,color: Colors.white),),

           Text("with Danodaldss..   ",
           style: TextStyle(fontSize: 16,color: Colors.white),),
        ],
       ),

                           Expanded(
                          child: AspectRatio(aspectRatio: 6/4.3,
                          child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset("images/idly_chilli.jpeg",), ),)),
                          ],
  ),),
                ],
              ),),

              const SizedBox(height: 20,),

              Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextField(
              decoration: InputDecoration(
                              hintText: " Search Food of Your Choice",hintStyle: TextStyle(color: Colors.red),
                              suffixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                              errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                            ),
              ),
            ),

              const SizedBox(height: 25,),

              AnimatedContainer(
                duration: const Duration(seconds: 3),
                child: Row(
                  children: [

                    const SizedBox(width: 1,),

                    Container(
                      width: 180,
                      height: 145,
                      decoration: BoxDecoration(
                        color:  Color.fromARGB(255, 235, 222, 221),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                        Expanded(
                          child: AspectRatio(aspectRatio: 10/3.5,
                          child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/Indian_thali.jpeg"), ),)),

                        const SizedBox(height: 5,),

                          const Text("Default platters",style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 34, 3, 14)),),
                        ],
                      ),
                      
                    ),
                    const SizedBox(width: 15,),

                    Container(
                      width: 180,
                      height: 145,
                      decoration: BoxDecoration(
                        color:  Color.fromARGB(255, 235, 222, 221),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                        Expanded(
                          child: AspectRatio(aspectRatio: 10/3.5,
                          child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/hakka_noodles.jpeg"), ),)),

                        const SizedBox(height: 5,),

                          const Text("Hakka Noodles",style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 34, 3, 14)),),
                        ],
                      ),
                      
                    ),
                  ],
                )
              ),

              const SizedBox(height: 24,),

              Row(
                children: [
                  const Text(" Starters", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),),

                  const SizedBox(width: 150,),

                  Text('More Starters-->>',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),)
                ],
              ),

              Container(
              // color: Color.fromARGB(255, 229, 232, 234),
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  BuildItem('images/Paneer_chilli.jpeg', 'Paneer Chilli                   '),
                  BuildItem('images/idly_chilli.jpeg', 'Idli Chilly                       '),
                  BuildItem('images/veg_crispy.jpeg', 'Veg Crispy                      '),
                  BuildItem('images/Veggies_fry.jpeg', 'Veggies Fry                    '),
                  BuildItem('images/veg_crispy.jpeg', 'Paneer Crispy               '),
                ],
              ),
             ),

              const SizedBox(height: 25,),

              Row(
                children: [
                  Text('  Pizza"s',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.red),),

                  const SizedBox(width: 150,),

                  Text('More Pizza"s--->>',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),)
                ],
              ),


             Container(
              // color: Color.fromARGB(255, 229, 232, 234),
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  BuildItem('images/pizzas/cheesepizza.jpg', 'Margherita                   '),
                  BuildItem('images/pizzas/veg-farmhouse-pizza.jpg', 'Farmhouse Pizza      '),
                  BuildItem('images/pizzas/VeggiParadise_B_260216.jpg', 'Veggie Paradise   '),
                  BuildItem('images/pizzas/Peppypaneer.jpg', 'Peppy Paneer Pizza   '),
                  BuildItem('images/pizzas/veg-farmhouse-pizza.jpg', 'Pasta Pizza                '),
                ],
              ),
             ),

             const SizedBox(height: 25,),

              Row(
                children: [
                  Text('  Sandwich',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.red),),

                  const SizedBox(width: 120,),

                  Text('More Sandwiches->',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),)
                ],
              ),

             Container(
              // color: Color.fromARGB(255, 229, 232, 234),
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  BuildItem('images/sandwich/Sandwich 1.jpeg', 'Veg Sandwich               '),
                  BuildItem('images/sandwich/sandwich 2.jpeg', 'Subway Special      '),
                  BuildItem('images/sandwich/cct.jpeg', 'Cheese chilly toast   '),
                  BuildItem('images/sandwich/ps.jpeg', 'Paneer Sandwich   '),
                  BuildItem('images/sandwich/p_c_s.jpeg', 'Paneer Corn Sandwich'),
                ],
              ),
             ),

             const SizedBox(height: 10,),

              Text('  Delivery Outlets Near You',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.red),),


             Card(
            margin: EdgeInsets.all(9),

            elevation: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [

                Image.asset('images/entry.jpeg',
                fit: BoxFit.fitWidth,
                width: 380,
                ),

                const SizedBox(height: 10,),

                 const Text('Byculla West, 1st Cross Lane ',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),),

                const SizedBox(height: 10,),

                Row(
                  children: [
                    Text('  Rating'),
                    const SizedBox(width: 90,),
                    ElevatedButton(onPressed: (){

                    }, child: Text('Order Now!!')),

                  ],
                ),
                const SizedBox(height: 10,),
              ],
            ),
          ),
        ]),
        ),
      ),

      // drawer
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red, 
            ),

            child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.orange),
            accountName: Text(
              "Laksh Doshi",
              style: TextStyle(fontSize: 22,fontStyle: FontStyle.italic),
            ),
            accountEmail: Text("lakshd1999@gmail.com",style: TextStyle(fontSize: 22),),
            currentAccountPictureSize: Size.square(40),
            ),
            // child:Text('Select your Shows',style: TextStyle(color:Colors.greenAccent,fontSize: 22,),),
              ),

              ListTile(
                title: const Text('Home page'),
                leading: const Icon(Icons.home),
                onTap: () {
                  setState(() {
                    Navigator.of(context).push(MaterialPageRoute
                  (builder: (BuildContext context) =>
                  const HomeScreen() 
                  ));
                  });
                },
              ),
              ListTile(
                title:Text('Our Outlets'),
                leading: Icon(Icons.restaurant),
                onTap: () {
                  setState(() {
                    Navigator.of(context).push(MaterialPageRoute
                  (builder: (BuildContext context) =>
                  const Outlets() 
                  ));
                  });
                },
              ),
              ListTile(
                title: Text('Set Favourite Food'),
                leading: Icon(Icons.food_bank_outlined),
                onTap: () {
                  setState(() {
                    Navigator.of(context).push(MaterialPageRoute
                  (builder: (BuildContext context) =>
                  const SetFavouritehome() 
                  ));
                  });
                },
              ),
              ListTile(
                title: Text('Chat WIth Us'),
                leading: Icon(Icons.chat_bubble),
                onTap: () {
                  setState(() {
                    Navigator.of(context).push(MaterialPageRoute
                  (builder: (BuildContext context) =>
                  const Royalplate_chatbot() 
                  ));
                  });
                },
              ),
              ListTile(
                title: Text('Your Account'),
                leading: Icon(Icons.person),
                onTap: () {
                  setState(() {
                    Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => 
                    const AccountScreen()));
                  });
                },
              ),
              ListTile(
                title: Text('Contact Us'),
                leading: Icon(Icons.contact_emergency),
                onTap: () {
                  setState(() {
                    const HomeScreen();
                  });
                },
              ),
              ListTile(
                title: Text('Log Out'),
                leading: Icon(Icons.logout_sharp),
                onTap: () {
                  setState(() {
                    Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => 
                    const OnBoarding15()));
                  });
                },
              ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.blue,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.reviews,color: Colors.blue),
            label: 'Write Review',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feedback,color:Colors.blue,),
            label: 'Complain',
          ),
          
        ],
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
      ),
    );
  } 
}

Widget BuildItem(image, title)
{
  return Container(
    child: CupertinoButton(onPressed: (){}, 
                    child: Column(
                      children: [

                        Text(title,style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),

                        Expanded(
                      child: AspectRatio(
                        aspectRatio: 18/12,
                        child: ClipRRect(borderRadius: BorderRadius.circular(15),
                        child: Image.asset(image,
                        fit:BoxFit.cover),),
                        ),
                        
                    ),
                      ],
                    )),
                  );
}