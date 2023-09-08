import 'package:royal_plate/OnBoarding4.dart';
import 'package:royal_plate/Outlets.dart';
import 'package:royal_plate/SetFav_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
List<CardItem> items = const [
  CardItem(
    urlImage: "images/Paneer_chilli.jpeg",
    title: "Paneer chilli"
  ),

  CardItem(
    urlImage: "images/idly_chilli.jpeg",
    title: "Idly Chilli"
  ),

  CardItem(
    urlImage: "images/Veggies_fry.jpeg",
    title: "Veggies Fry"
  ),

  CardItem(
  urlImage: "images/gobi.jpeg",
  title: "Gobi Manchurian")
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Royal Plates"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 10,),

              const Text(" Hi, Laksh!",
              style: TextStyle(fontSize: 40,color:Colors.deepPurple),) ,

              const SizedBox(height: 10,),  
              Row(children: const [
                  Text("   Current Location",
              style: TextStyle(fontSize: 15,color:Colors.blueGrey),),

              SizedBox(width: 170,),

              Icon(Icons.play_circle_sharp),
              ],),
              

              const SizedBox(height: 8,),

              Row(
                children: const [

                  SizedBox(width: 10,),

                  Icon(Icons.location_on),

                  SizedBox(width: 3,),

                  Text("Mumbai"),

                  SizedBox(width: 177,),

                  Text("How it Works?"),
                  
                ],
              ),

              const SizedBox(height: 20,), 

              // List View 1
              Container(
              height: 146 ,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // container -1
                Container(
                decoration: BoxDecoration
                (
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.black,
                ),
                 width: 370,
                //  height: 100,
                 child: Row(
              children: [
             Column(
            children: const [

           SizedBox(height: 20,),

           Text(" Enjoy Your First     ",
           style: TextStyle(fontSize: 16,color:Colors.white),),

           Text("  order, the taste of   ",
           style: TextStyle(fontSize: 16,color: Colors.white),),

           Text(" our delicious food!",
           style: TextStyle(fontSize: 16,color: Colors.white),),
        ],
      ),

                           Expanded(
                          child: AspectRatio(aspectRatio: 5/3.1,
                          child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/Food_home.jpeg"), ),)),
                          ],
  ),),

                  const SizedBox(width: 11,),
                  
                  // container-2
                  Container(
                  decoration: BoxDecoration
                (
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black,
                ),
                  width: 360,
                  height: 100,
                  // color: Colors.black,
                  child: Row(
                  children: [
                   Column(
                   children: const [

                 SizedBox(height: 20,),

                 Text("  Try out Our Best     ",
           style: TextStyle(fontSize: 16,color:Colors.white),),

                 Text("   Meals, Their tase will   ",
           style: TextStyle(fontSize: 16,color: Colors.white),),

                 Text("Amaze You!!   ",
           style: TextStyle(fontSize: 16,color: Colors.white),),
        ],
      ),

                          Expanded(
                          child: AspectRatio(aspectRatio: 2/3,
                          child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/Pizza.jpeg"), ),)),
    ],
  ),),
                  SizedBox(width: 5,),
                ],
              ),),

              const SizedBox(height: 20,),

              Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
              decoration: InputDecoration(
                              hintText: "Search Food or Events",hintStyle: TextStyle(color: Colors.blue),
                              suffixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(),
                              errorBorder: OutlineInputBorder(),
                            ),
              ),
            ),

              const SizedBox(height: 25,),

              AnimatedContainer(
                duration: const Duration(seconds: 3),
                child: Row(
                  children: [
                    const SizedBox(width: 15,),

                    Container(
                      width: 160,
                      height: 140,
                      decoration: BoxDecoration(
                        color:  Color.fromARGB(255, 243, 242, 242),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                        Expanded(
                          child: AspectRatio(aspectRatio: 4/3.5,
                          child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/Indian_thali.jpeg"), ),)),

                        const SizedBox(height: 5,),

                          const Text("Default platters",style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      
                    ),
                    const SizedBox(width: 15,),

                    Container(
                      width: 160,
                      height: 140,
                      decoration: BoxDecoration(
                        color:  Color.fromARGB(255, 243, 242, 242),
                        backgroundBlendMode: null,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: Column(
                        children: [
                          Expanded(
                          child: AspectRatio(aspectRatio: 4/3.5,
                          child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/hakka_noodles.jpeg"), ),)),

                        // const SizedBox(height: 2,),

                          const Text("Craft Your Own Plate",style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                    )
                  ],
                )
              ),

              const SizedBox(height: 30,),

              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(width: 0,),
                    // Container - 1
                    Container(
                      width: 190,
                      height: 280,
                      decoration: BoxDecoration(color: Colors.lightGreenAccent,borderRadius: BorderRadius.circular(12.0)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8,),
                          const Text("     Default Menu 1",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          const SizedBox(height: 14,),

                          Row(children: [
                            Image.asset("images/pizza2.png",height: 80,),
                            const SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('3 starters'),
                                Text('3 Main Course'),
                                Text('3 Desserts'),
                                Text('3 Drinks'),
                              ],
                            )
                          ],),
                          const SizedBox(height: 15,),
                          Row(
                            children: [
                              const SizedBox(width: 10,),
                              Icon(Icons.person),
                              const SizedBox(width: 7,),
                              Text("Min 800"),
                            ],
                          ),

                          const SizedBox(height: 10,),
                          const Text("    Starts at 777 Rs Only"),  

                        ],
                      ),
                    ),

                    const SizedBox(width: 10,),
                    // Container - 2
                    Container(
                      width: 190,
                      height: 280,
                      decoration: BoxDecoration(color: Colors.lightGreenAccent,borderRadius: BorderRadius.circular(12.0)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8,),
                          Text("     Default Menu 2",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          const SizedBox(height: 14,),

                          Row(children: [
                            Image.asset("images/pizza2.png",height: 80,),
                            const SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('3 starters'),
                                Text('3 Main Course'),
                                Text('3 Chinese'),
                                Text('3 Mocktails'),
                              ],
                            )
                          ],),

                          const SizedBox(height: 15,),
                          Row(
                            children: [
                              const SizedBox(width: 10,),
                              Icon(Icons.person),
                              const SizedBox(width: 7,),
                              Text("Min 1000"),
                            ],
                          ),

                          const SizedBox(height: 10,),
                          const Text("    Starts at 927 Rs Only"), 
                        ],
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 24,),

              const Text(" Starters                                          More Starters", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blue),),

              SizedBox(height: 20,),

              Container(
              height: 150 ,
              child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index) =>Buildcard(item: items[index]),
              separatorBuilder: (context, _) => SizedBox(width: 10,),
              itemCount: 3)),

              const SizedBox(height: 30,),

              const Text("  Services",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

              const SizedBox(height: 10,),

              // List View 3.
              // Services
              Container(
                height: 330,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(width: 5,),

                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 242, 242),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 300,
                      height: 380,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const SizedBox(height: 10,),
                          Row(
                            children: [
                              const SizedBox(width: 15,),
                              Image.asset("images/candies.jpeg",height: 150),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Text("   Signature - 1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.purple),),
                          SizedBox(height: 8,),
                          Text("    -> High Quality Disposable Cutlery",style: TextStyle(fontSize: 18),),
                          SizedBox(height: 7,),
                          Text("    -> Served By WaitStaff",style: TextStyle(fontSize: 18),),
                          SizedBox(height: 7,),
                          Text("    -> Best For Weddings, Events....",style: TextStyle(fontSize: 18),),
                          SizedBox(height: 14,),
                          Text("                          Know More",style: TextStyle(fontSize: 16,color: Colors.blue),)
                        ],
                      ),
                    ),

                    const SizedBox(width: 12,),

                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 242, 242),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 300,
                      height: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const SizedBox(height: 10,),
                          Row(
                            children: [
                              const SizedBox(width: 15,),
                              Image.asset("images/candies.jpeg",height: 150),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Text("   Signature - 2",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.purple),),
                          SizedBox(height: 8,),
                          Text("     -> Disposable Cutlery",style: TextStyle(fontSize: 18),),
                          SizedBox(height: 7,),
                          Text("     -> Elegant Decorations",style: TextStyle(fontSize: 18),),
                          SizedBox(height: 7,),
                          Text("     -> Best For Weddings, Events....",style: TextStyle(fontSize: 18),),
                          SizedBox(height: 12,),
                          Text("                          Know More",style: TextStyle(fontSize: 16,color: Colors.blue),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25,),

              Text("  How Does It Work?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

              const SizedBox(height: 25,),

              // How does it Work
              SizedBox
              (
              height: 770,
              child: Column(
              children: 
              [
                // Row 1 of the Entire Column
                Row(children: [
                  Image.asset("images/menu.png",height: 105,),
                  const SizedBox(width: 40,),
                  Column
                  (
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Customize Menu",style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 22,fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text("Select Items for a single Event",style: TextStyle(fontSize: 16),),
                    Text("Or Multiple Events",style: TextStyle(fontSize: 16),),
                  ],
                  )
                ],),
                const SizedBox(height: 16,),

                // Row 2 of the column
                Row(children: [
                  const SizedBox(width: 10,),
                  Column
                  (
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Choose Services",style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 22,fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text("Select the type of Services",style: TextStyle(fontSize: 16),),
                    Text("from varying cutlery,mode of",style: TextStyle(fontSize: 16),),
                    Text("Serving options & more",style: TextStyle(fontSize: 16),),
                    Text("",style: TextStyle(fontSize: 16),),
                  ],
                  ),
                  const SizedBox(width: 33,),
                  Image.asset("images/service.jpeg",height: 105,)
                ],),
                const SizedBox(height: 18,),

                // Row 3 of the Column
                Row(children: [
                  Image.asset("images/pricing.jpeg",height: 104,),
                  const SizedBox(width: 10,),
                  Column
                  (
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Dynamic Pricing",style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 22,fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text("Price per plate varies with no ",style: TextStyle(fontSize: 16),),
                    Text("of Items in a plate and no of ",style: TextStyle(fontSize: 16),),
                    Text("plates selected",style: TextStyle(fontSize: 16),),
                    Text("",style: TextStyle(fontSize: 16),),
                  ],
                  )
                ],),
                const SizedBox(height: 18,),

                 // Row 4 of column 
                 Row(children: [
                  const SizedBox(width: 10,),
                  Column
                  (
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Track Your Order",style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 22,fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text("Track the Order Status and",style: TextStyle(fontSize: 16),),
                    Text("seek help from the best",style: TextStyle(fontSize: 16),),
                    Text("executives anytime",style: TextStyle(fontSize: 16),),
                    Text("",style: TextStyle(fontSize: 16),),
                  ],
                  ),
                  const SizedBox(width: 34,),
                  Image.asset("images/trace.jpeg",height: 105,)
                ],),
                const SizedBox(height: 22,),

                // Row 5 of column
                Row(children: [
                  Image.asset("images/taste.jpeg",height: 105,),
                  const SizedBox(width: 38,),
                  Column
                  (
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Taste Your Samples",style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 22,fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text("Explode Your Taste bud with",style: TextStyle(fontSize: 16),),
                    Text("samples of what you order(on",style: TextStyle(fontSize: 16),),
                    Text("request for eligible orders).",style: TextStyle(fontSize: 16),),
                    Text("",style: TextStyle(fontSize: 16),),
                  ],
                  )
                ],),
                const SizedBox(height: 12,),

                // Row 6 of column
                Row(children: [
                  const SizedBox(width: 10,),
                  Column
                  (
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Enjoy Food and Services",style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 22,fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text("Enjoy Event with delicious",style: TextStyle(fontSize: 16),),
                    Text("and customized food",style: TextStyle(fontSize: 16),),
                  ],
                  ),
                  const SizedBox(width: 22,),
                  Image.asset("images/enjoy.jpeg",height: 105,)
                ],),
                const SizedBox(height: 18,),

                ],
              ),),

              Text("Delicious Food With Proffesional Service!",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),

              const SizedBox(height: 25,),

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
              color: Colors.orange, 
            ),

            child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.orange),
            accountName: Text(
              "Laksh Doshi",
              style: TextStyle(fontSize: 22,fontStyle: FontStyle.italic),
            ),
            accountEmail: Text("lakshd1999@gmail.com",style: TextStyle(fontSize: 22),),
            currentAccountPictureSize: Size.square(40),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black,
              child: Text("L",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.tealAccent),),
            ),),
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
                title: Text('Delivery'),
                leading: Icon(Icons.delivery_dining),
                onTap: () {
                  setState(() {
                    const HomeScreen();
                  });
                },
              ),
              ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
                onTap: () {
                  setState(() {
                    const HomeScreen();
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
          ],
        ),
      ),
     
      // bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home,size: 20,),
          ),
          BottomNavigationBarItem(
          label: "Wishlist",
          icon: Icon(Icons.heart_broken,size: 20,),
          ),
          BottomNavigationBarItem(
          label: "profile",
          icon: Icon(Icons.account_circle,size: 20,),
          ),
          
        ],
        ),
    );
  } 
}
// ignore: non_constant_identifier_names
Widget Buildcard(
  {
    required CardItem item,
  }
) => Container(
                    decoration: BoxDecoration
                (
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                  width: 150,
                  child: Column(
                    children: [
                      Expanded(
                      child: AspectRatio(
                        aspectRatio: 4/2,
                        child: ClipRRect(borderRadius: BorderRadius.circular(10),
                        child: Image.asset(item.urlImage,
                        fit:BoxFit.cover),),
                        ),
                        
                    ),
                    Text(
                      item.title,
                      style: TextStyle(color: Colors.white,fontSize: 20),
                    ),
                    ]
                  ),
);