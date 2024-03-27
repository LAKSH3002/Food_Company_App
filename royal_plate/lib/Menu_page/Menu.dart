import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:royal_plate/HomeScreen.dart';

import '../Accounts.dart';

class Menu_page extends StatefulWidget {
  const Menu_page({super.key, required image});

  @override
  State<Menu_page> createState() => _Menu_pageState();
}

class _Menu_pageState extends State<Menu_page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Row(
          children: 
          [
            const Text("Danodaldss..",style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.bold),),
            SizedBox(width: 80,),
            
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

        body:Padding(
        padding: EdgeInsets.all(4.0),
        child: SingleChildScrollView(
          child: Column(
            children: [

              Center(
                    child: Image.asset('images/menu.png',
                    fit: BoxFit.fitWidth,
                    width: 450,
                    ),
                  ),

              const SizedBox(height: 10,),
              Row(
                children: [
                  const Text(" Starters", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),),

                  const SizedBox(width: 125,),

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

                  const SizedBox(width: 125,),

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

                  const SizedBox(width: 95,),

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

              const SizedBox(height: 25,),

              Row(
                children: [
                  Text('  Chinese',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.red),),

                  const SizedBox(width: 120,),

                  Text('More chinese-->>',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),)
                ],
              ),

             Container(
              // color: Color.fromARGB(255, 229, 232, 234),
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  BuildItem('images/hakka_noodles.jpeg', 'Hakka Noodles               '),
                  BuildItem('images/Fried_rice.jpeg', 'Fried Rice      '),
                  BuildItem('images/Paneer_chilli.jpeg', 'Paneer Manchurian   '),
                  BuildItem('images/Noodles.jpg', 'Schezwan Noodles  '),
                  BuildItem('images/sandwich/p_c_s.jpeg', 'Schezwan Sandwich'),
                ],
              ),
             ),
            ],
          ),
        ),)
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

Widget ImageBuilder(image)
{
  return Image.asset(image);
}