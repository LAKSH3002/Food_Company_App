import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:royal_plate/cart_functionaltiy/cart_model.dart';
import 'package:royal_plate/cart_functionaltiy/cart_provider.dart';
import 'package:badges/badges.dart' as badges;
import 'package:royal_plate/cart_functionaltiy/db_helper.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  DBHelper? dbHelper = DBHelper();

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 158, 120, 224),
          titleSpacing: 2,
          centerTitle: true,
          title: Text(
            'Danodalds - Cart List',
            style: TextStyle(
                fontSize: 20,
                color: Colors.greenAccent,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            Center(
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
                  print(snapshot.data);
                  return Expanded(
                      child: ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            print(snapshot.data![index].productName);
                            print(snapshot.data![index].productPrice);
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
                                          width: 140,
                                        ),
                                        SizedBox(
                                          width: 20,
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
                                              onTap: (){
                                                dbHelper!.delete(snapshot.data![index].id!);
                                                cart.removeCounter();
                                                cart.removeTotalPrice(double.parse(snapshot.data![index].productPrice.toString()));
                                              },)
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
                                              
                                          /*Align(
                                          alignment: Alignment.centerLeft,
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
                                                  Icon(Icons.add, color: Colors.white,),
                                                  Text(
                                                    snapshot.data![index].quantity.toString(),
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                  InkWell(
                                                    onTap: (){
                                                      int quantity = snapshot.data![index].quantity!;
                                                      double price = snapshot.data![index].initialprice!;
                                                      quantity++;
                                                      double newPrice = price*quantity;
                                          
                                                      dbHelper!.updatequantity(Cart(
                                                        id: snapshot.data![index].id!, 
                                                        productId: snapshot.data![index].id!.toString(), 
                                                        productname: snapshot.data![index].productname!, 
                                                        productprice: newPrice, 
                                                        initialprice: snapshot.data![index].initialprice!, 
                                                        quantity: quantity, 
                                                        image: snapshot.data![index].image.toString())
                                                        ).then((value){
                                                          newPrice = 0;
                                                          quantity = 0;
                                                          // cart.addTotalPrice(snapshot.data![index].initialprice);
                                                        });
                                                    },
                                                    child: Icon(Icons.remove, color: Colors.white,))
                                                ],
                                              ),
                                            ),
                                          ),
                                          ),
                                        )*/
                                        
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
                return Center(child: CircularProgressIndicator());
              },
            ),
            Consumer<CartProvider>(builder: (context, value, child){
              return Visibility(
                visible: value.getTotalPrice().toStringAsFixed(2) == '0.0' ? false: true,
                child: Column(
                  children: [
                    Reusablewidget(title: ' Sub Total: ', value: value.getTotalPrice().toStringAsFixed(2)+" Rs")
                  ],
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
        Text(title, style: Theme.of(context).textTheme.headlineLarge,),
        Text(value, style: Theme.of(context).textTheme.headlineMedium,),
      ],),
    );
  }
}