import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:royal_plate/cart_functionaltiy/cart_screen.dart';

class Menu_page extends StatefulWidget {
  const Menu_page({
    super.key,
  });

  @override
  State<Menu_page> createState() => _Menu_pageState();
}

class _Menu_pageState extends State<Menu_page> {
  TextEditingController foodcount = TextEditingController();
  List<String> startersname = [
    'Idli Chilly',
    'Veggies Fry',
    'Paneer Crispy',
    'Veg Crispy',
    'Paneer Chilli'
  ];
  List<int> starters_rate = [280, 260, 300, 320, 330];
  List<String> starters_image = [
    'images/idly_chilli.jpeg',
    'images/Veggies_fry.jpeg',
    'images/veg_crispy.jpeg',
    'images/Veggies_fry.jpeg',
    'images/Paneer_chilli.jpeg'
  ];

  @override
  void initState() {
    super.initState();
    foodcount.text = "0"; // Setting the initial value for the field.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          titleSpacing: 2,
          title: Row(
            children: [
              SizedBox(
                width: 100,
              ),
              Text(
                'Danodalds Menu',
                style: TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(255, 47, 235, 54),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 40,
              ),
              CupertinoButton(
                  onPressed: () {
                    Navigator.of(context).pop(MaterialPageRoute(
                        builder: (BuildContext context) => CartScreen()));
                  },
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(4.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      " Starters",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    const SizedBox(
                      width: 125,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  // color: Color.fromARGB(255, 229, 232, 234),
                  height: 160,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      BuildItem(
                          'images/idly_chilli.jpeg',
                          'Idli Chilly                              ',
                          '280 Rs'),
                      BuildItem('images/Veggies_fry.jpeg',
                          'Veggies Fry                    ', '260 Rs'),
                      BuildItem('images/veg_crispy.jpeg',
                          'Paneer Crispy                   ', '300 Rs'),
                      BuildItem('images/Veggies_fry.jpeg',
                          'Veg Crispy                        ', '320 Rs'),
                      BuildItem('images/Paneer_chilli.jpeg',
                          'Paneer Chilli         ', '330 Rs'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Text(
                      '  Pizza"s',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    const SizedBox(
                      width: 125,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  // color: Color.fromARGB(255, 229, 232, 234),
                  height: 160,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      BuildItem('images/pizzas/cheesepizza.jpg',
                          'Margherita                            ', '260 Rs'),
                      BuildItem('images/pizzas/veg-farmhouse-pizza.jpg',
                          'Farmhouse Pizza                 ', '300 Rs'),
                      BuildItem('images/pizzas/VeggiParadise_B_260216.jpg',
                          'Veggie Paradise   ', '320 Rs'),
                      BuildItem('images/pizzas/Peppypaneer.jpg',
                          'Peppy Paneer Pizza   ', '400 Rs'),
                      BuildItem('images/pizzas/veg-farmhouse-pizza.jpg',
                          'Pasta Pizza                          ', '420 Rs'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Text(
                      '  Sandwich',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    const SizedBox(
                      width: 95,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  // color: Color.fromARGB(255, 229, 232, 234),
                  height: 160,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      BuildItem('images/sandwich/Sandwich 1.jpeg',
                          'Veg Sandwich                      ', '100 Rs'),
                      BuildItem('images/sandwich/sandwich 2.jpeg',
                          'Subway Special      ', '300 Rs'),
                      BuildItem('images/sandwich/cct.jpeg',
                          'Cheese chilly toast   ', '200 Rs'),
                      BuildItem('images/sandwich/ps.jpeg',
                          'Paneer Sandwich          ', '300 Rs'),
                      BuildItem('images/sandwich/p_c_s.jpeg',
                          'Paneer Corn Sandwich            ', '350 Rs'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Text(
                      '  Chinese',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    const SizedBox(
                      width: 120,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  // color: Color.fromARGB(255, 229, 232, 234),
                  height: 160,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      BuildItem('images/hakka_noodles.jpeg',
                          'Hakka Noodles                    ', '300 Rs'),
                      BuildItem('images/Fried_rice.jpeg',
                          'Fried Rice                            ', '320 Rs'),
                      BuildItem('images/Paneer_chilli.jpeg',
                          'Paneer Manchurian   ', '330 Rs'),
                      BuildItem('images/Noodles.jpg',
                          'Schezwan Noodles         ', '400 Rs'),
                      BuildItem('images/sandwich/p_c_s.jpeg',
                          'Schezwan Sandwich               ', '430 Rs'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        controller: foodcount,
                        keyboardType: TextInputType.numberWithOptions(
                            decimal: false, signed: false),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[],
                    ),
                    Spacer(
                      flex: 3,
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Widget BuildItem(image, title, rate) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 20 / 12,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  image,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Color.fromARGB(255, 234, 237, 239)),
            width: 180,
            height: 20,
            child: Row(
              // child 1
              children: [
                // Button to subract items.

                SizedBox(
                  width: 16,
                ),
                Expanded(child: Text(rate)),
                // Button to add items.
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget ImageBuilder(image) {
    return Image.asset(image);
  }

// Widget Foodrates()
// {
// TextEditingController food = TextEditingController();
// foodrate.text = '0';

// @override
// void initState() {
//   super.initState();
//   foodcount2.text = "0"; // Setting the initial value for the field.
// }

//   return
// }
}
