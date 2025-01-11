import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:provider/provider.dart';
import 'package:royal_plate/cart_functionaltiy/cart_model.dart';
import 'package:royal_plate/cart_functionaltiy/cart_provider.dart';
import 'package:badges/badges.dart' as badges;
import 'package:royal_plate/cart_functionaltiy/db_helper.dart';
import 'package:royal_plate/screens/HomeScreen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  DBHelper? dbHelper = DBHelper();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white
          ),
          backgroundColor: Color.fromARGB(255, 158, 120, 224),
          titleSpacing: 2,
          centerTitle: true,
          title: Text(
            'Danodalds - Cart List',
            style: TextStyle(
                fontSize: 20,
                color: Colors.yellowAccent,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            Center(
              child: badges.Badge(
                badgeContent: Consumer<CartProvider>(
                  builder: (context, value, child) {
                    // print(value.getCounter().toString());
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
            SizedBox(
              width: 20.0,
            )
          ],
        ),
        body: Column(
          children: [
            
            FutureBuilder(
              future: cart.getData(),
              builder: (context, AsyncSnapshot<List<Cart>> snapshot) 
              {
                if (snapshot.hasData) 
                {
                  if(snapshot.data!.isEmpty){
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 100,),
                          Image.asset('images/img1.png', height: 170,
                                    width: 170,),
                          SizedBox(height: 30,),
                          Text('Explore Products', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    );
                  }
                  else{
                    // print(snapshot.data);
                    return Expanded(
                      child: ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            // print(snapshot.data![index].productName);
                            // print(snapshot.data![index].productPrice);
                            return Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                     
                                      children: [
                                        Image.asset(
                                          snapshot.data![index].image
                                              .toString(),
                                          height: 120,
                                          width: 160,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                Text(
                                                snapshot.data![index].productName
                                                    .toString(),
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                              
                                              InkWell(child: Icon(Icons.delete, size: 20.0,),
                                                onTap: () {
                                                  // Fetch the product price
                                                  double productPrice = double.tryParse(snapshot.data![index].productPrice.toString()) ?? 0.0;
                                                  // Delete the item from the database
                                                  dbHelper!.delete(snapshot.data![index].id!).then((_) {                                                   
                                                    cart.removeTotalPrice(productPrice);
                                                    cart.removeCounter();                                                    
                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                      SnackBar(
                                                        content: Text('Product removed from the cart.'),
                                                        backgroundColor: Colors.red,
                                                      ),
                                                    );
                                                  }).catchError((error) {
                                                    // Handle errors gracefully
                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                      SnackBar(
                                                        content: Text('Error removing product: $error'),
                                                        backgroundColor: Colors.red,
                                                      ),
                                                    );
                                                  });
                                                },
                                              )
                                              ],
                                              ),
                                              
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                    " ${snapshot.data![index].productPrice} Rs ",
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
                                          onTap: () {},
                                          child: Container(
                                            height: 35,
                                            width: 100,
                                            decoration: BoxDecoration(
                                                color: Colors.green),
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  InkWell(
                                                    onTap: (){
                                                      int quantity = snapshot.data![index].quantity!;
                                                      int price = snapshot.data![index].productPrice!;
                                                      if(quantity>1){
                                                        quantity--;
                                                        // Calculation of new Price
                                                        int newPrice = price*quantity;
                                                                                                                                                                                                                                                        
                                                        dbHelper!.updatequantity(Cart(
                                                        id: snapshot.data![index].id!, 
                                                        productId: snapshot.data![index].id!.toString(), 
                                                        productName: snapshot.data![index].productName!, 
                                                        productPrice: newPrice, 
                                                        initialprice: snapshot.data![index].initialprice!, 
                                                        quantity: quantity, 
                                                        image: snapshot.data![index].image.toString())
                                                        ).then((value){                                                          
                                                          cart.removeTotalPrice(double.parse(price.toString()));
                                                        }).onError((error, stackTrace) {
                                                          print(error.toString());
                                                        },);
                                                        print('Quantity: $quantity');
                                                        print('New Price: $newPrice');
                                                        print('Total Price: ${cart.totalPrice}');
                                                      }
                                                      
                                                    },
                                                  child: Icon(Icons.remove, color: Colors.white,)),

                                                  Text(
                                                    snapshot.data![index].quantity.toString(),
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),

                                                  InkWell(
                                                    onTap: (){
                                                      int quantity = snapshot.data![index].quantity!;
                                                      int price = snapshot.data![index].productPrice!;
                                                      quantity++;
                                                      int newPrice = quantity*price;
                                          
                                                      dbHelper!.updatequantity(Cart(
                                                        id: snapshot.data![index].id!, 
                                                        productId: snapshot.data![index].id!.toString(), 
                                                        productName: snapshot.data![index].productName!, 
                                                        productPrice: newPrice, 
                                                        initialprice: snapshot.data![index].initialprice!, 
                                                        quantity: quantity, 
                                                        image: snapshot.data![index].image.toString())
                                                        ).then((value){
                                                          cart.addTotalPrice(double.parse(price.toString()));
                                                        }).onError((error, stackTrace) {
                                                          print(error.toString());
                                                        },);
                                                        print('Quantity: $quantity');
                                                        print('New Price: $newPrice');
                                                        print('Total Price: ${cart.totalPrice}');
                                                    },
                                                    child: Icon(Icons.add, color: Colors.white,))
                                                ],
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
                          }));
                }
                  }                                  
                return Center(child: CircularProgressIndicator());
              },
            ),
            
            Consumer<CartProvider>(builder: (context, value, child){
              double totalPrice = value.getTotalPrice();
              return Visibility(
                visible: totalPrice>0.0,
                child: Container(
                  color: Colors.amberAccent,
                  child: Row(
                    children: [
                      const SizedBox(width: 10,),
                      Reusablewidget(title: 'Total: ', value: value.getTotalPrice().toStringAsFixed(2)+" Rs"),
                      const SizedBox(width: 50,),
                      ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.yellowAccent, backgroundColor: Colors.deepPurple),
                      onPressed: () async {     
                        showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  title:
                                      const Text("Successfully placed your Order!!"),
                                  content: const Text(
                                      "Your Order will be delivered soon!!"),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {

                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        HomeScreen(
                                                          name: namecontroller,
                                                          email:
                                                              emailcontroller,
                                                        )))
                                            .onError((error, stackTrace) {});
                                            
                                      },
                                      child: Container(
                                        color: Colors.green,
                                        padding: const EdgeInsets.all(14),
                                        child: const Text("okay"),
                                      ),
                                    ),
                                  ],
                                ));
                      },
                      child: const Text(
                        "Order Now!!",
                        style:
                            TextStyle(fontSize: 22, fontStyle: FontStyle.italic),
                      ),
                    ),
                      
                      
                    ],
                  ),
                ),
              );
            },)

          ],
        ));
  }
}

class Reusablewidget extends StatelessWidget {
  final String title, value;
  const Reusablewidget({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: Row(
        children: [
        Text(title, style: Theme.of(context).textTheme.titleLarge,),
        Text(value, style: Theme.of(context).textTheme.titleLarge,),
      ],),
    );
  }
}