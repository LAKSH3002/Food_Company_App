import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:royal_plate/cart_functionaltiy/cart_provider.dart';
import 'package:royal_plate/cart_functionaltiy/cart_screen.dart';

class Menu_Screen extends StatefulWidget {
  const Menu_Screen({super.key});

  @override
  State<Menu_Screen> createState() => _Menu_ScreenState();
}

class _Menu_ScreenState extends State<Menu_Screen> {

  List<String> foodname = [
    'Idli Chilly',
    'Veggies Fry',
    'Paneer Crispy',
    'Veg Crispy',
    'Paneer Chilli',
    'Margherita',
    'Peppy Paneer',
    'Pasta Pizza',
    'Veg Sandwich ',
    'Subway Special',
    'fried Rice',
  ];
  List<int> food_rate = [280, 260, 300, 320, 330, 260, 300, 320, 400, 420, 380];
  List<String> food_image = [
    'images/idly_chilli.jpeg',
    'images/Veggies_fry.jpeg',
    'images/veg_crispy.jpeg',
    'images/Veggies_fry.jpeg',
    'images/Paneer_chilli.jpeg',
    'images/pizzas/cheesepizza.jpg',
    'images/pizzas/Peppypaneer.jpg',
    'images/pizzas/veg-farmhouse-pizza.jpg',
    'images/sandwich/Sandwich 1.jpeg',
    'images/sandwich/sandwich 2.jpeg',
    'images/Fried_rice.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final Cart = Provider.of<CartProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        titleSpacing: 2,
        title: Row(
          children: [
            Text(
              'Danodalds Product List',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 20,
            ),
            CupertinoButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => CartScreen()));
                },
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                ))
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            '  Items List',
            style: TextStyle(
                fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: foodname.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image.asset(
                                  food_image[index].toString(),
                                  height: 120,
                                  width: 140,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      foodname[index].toString(),
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      food_rate[index].toString() + " Rs ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: InkWell(
                                        onTap: () {
                                          const snackdemo = SnackBar(
                                            content: Text(
                                                'Product added to Cart!!'),
                                            backgroundColor: Colors.green,
                                            elevation: 10,
                                            behavior: SnackBarBehavior.floating,
                                            margin: EdgeInsets.all(5),
                                          );
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(snackdemo);
                                              
                                          print(index);
                                          print(index.toString());
                                          print(foodname[index].toString());
                                          print(food_rate[index].toString());
                                          print(food_rate[index]);
                                          print('1');
                                          print(food_image[index].toString());

                                       
                                        },
                                        child: Container(
                                          height: 35,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              color: Colors.green),
                                          child: Center(
                                            child: Text(
                                              'Add to Cart',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  })),
        ],
      ),
    );
  }
}
