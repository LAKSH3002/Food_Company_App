import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:royal_plate/cart_functionaltiy/cart_model.dart';
import 'package:royal_plate/cart_functionaltiy/cart_provider.dart';
import 'package:badges/badges.dart' as badges;
import 'package:royal_plate/cart_functionaltiy/cart_screen.dart';
import 'package:royal_plate/cart_functionaltiy/db_helper.dart';

class Menu_Screen extends StatefulWidget {
  const Menu_Screen({super.key});

  @override
  State<Menu_Screen> createState() => _Menu_ScreenState();
}

class _Menu_ScreenState extends State<Menu_Screen> {
  DBHelper? dbHelper = DBHelper();
  List<String> productName = [
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
  List<int> productPrice = [
    280,
    260,
    300,
    320,
    330,
    260,
    300,
    320,
    400,
    420,
    380
  ];
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
    final cart = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 158, 120, 224),
        titleSpacing: 2,
        centerTitle: true,
        title: Text(
          'Product List',
          style: TextStyle(
              fontSize: 20,
              color: Colors.greenAccent,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartScreen()));
            },
            child: Center(
              child: badges.Badge(
                badgeContent: Consumer<CartProvider>(
                  builder: (context, value, child) {
                    return Text(
                      value.getCounter().toString(),
                      style: TextStyle(color: Colors.white),
                    );
                  },
                ),
                badgeAnimation: badges.BadgeAnimation.rotation(
                    animationDuration: Duration(milliseconds: 300),
                    loopAnimation: false),
                child: Icon(Icons.shopping_bag_outlined, color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              '--> Food Items List <--',
              style: TextStyle(
                  fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: productName.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image.asset(
                                  food_image[index].toString(),
                                  height: 120,
                                  width: 160,
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        productName[index].toString(),
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        productPrice[index].toString() + " Rs ",
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
                                            dbHelper!
                                                .insert(
                                              Cart(
                                                id: index, 
                                                productId: index.toString(), 
                                                productName: productName[index].toString(), 
                                                initialprice: productPrice[index], 
                                                productPrice: productPrice[index], 
                                                quantity: 1, 
                                                image: food_image[index].toString()))
                                                .then((value) {
                                              print('Product is added to cart ${productName[index]}');
                                              cart.addTotalPrice(double.parse(productPrice[index].toString()));
                                              cart.addCounter();
                                            }).onError((error, stackTrace) {
                                              print(error.toString());
                                            });
                                            const snackdemo = SnackBar(
                                              content:
                                                  Text('Product added to Cart!!'),
                                              backgroundColor: Colors.green,
                                              elevation: 10,
                                              behavior: SnackBarBehavior.floating,
                                              margin: EdgeInsets.all(5),
                                            );
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(snackdemo);
                                  
                                            print(index);
                                            // print(index.toString());
                                            print(productName[index].toString());
                                            print(productPrice[index].toString());
                                            // print(productprice[index]);
                                            print(food_image[index].toString());
                                          },
                                          child: Container(
                                            height: 35,
                                            width: 100,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius: BorderRadius.circular(5)),
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
                                  ),
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
