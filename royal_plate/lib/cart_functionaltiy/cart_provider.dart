import 'package:flutter/cupertino.dart';
import 'package:royal_plate/cart_functionaltiy/cart_model.dart';
import 'package:royal_plate/cart_functionaltiy/db_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartProvider with ChangeNotifier {
  DBHelper db = DBHelper();
  int _counter = 0;
  int get counter => _counter;

  double _totalPrice = 0;
  double get totalPrice => _totalPrice;

  late Future<List<Cart>> _cart;
  Future<List<Cart>> get cart => _cart;

  Future<List<Cart>> getData() async {
    _cart = db.getCartList();
    return _cart;
  }

  void _setPrefItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('cart_item', _counter);
    prefs.setDouble('total_price', _totalPrice);
    notifyListeners();
  }

  void _getPrefItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _counter = prefs.getInt('cart_item') ?? 0;
    if (_counter < 0) {
      _counter = 0; // Reset to zero if negative
      prefs.setInt('cart_item', _counter); // Save the updated value
    }
    _totalPrice = prefs.getDouble('total_price') ?? 0.0;
    notifyListeners();
  }

  void addCounter() {
    _counter++;
    print("Counter incremented to $_counter");
    _setPrefItems();
    notifyListeners();
  }

  void removeCounter() {
    if (_counter > 0) {
      _counter--;
      print("Counter decremented to $_counter");
      _setPrefItems();
      notifyListeners();
    }
  }

  int getCounter() {
    _getPrefItems();
    if (_counter < 0) {
      _counter = 0; // Reset to zero if negative
      _setPrefItems();
    }
    return _counter;
  }

  void addTotalPrice(double productPrice) {
    if (_counter == 0) {
      _totalPrice = 0;
    }
    _totalPrice = _totalPrice + productPrice;
    print("Total price updated to: $_totalPrice");
    _setPrefItems();
    notifyListeners();
  }

  void removeTotalPrice(double productPrice) {
    _totalPrice = _totalPrice - productPrice;
    if (_totalPrice < 0) {
      _totalPrice = 0.0; // Reset to zero if it goes negative
    }
    print("Total price updated to: $_totalPrice");
    _setPrefItems();
    notifyListeners();
  }

  double getTotalPrice() {
    _getPrefItems();
    // ignore: unnecessary_null_comparison
    if (_cart != null) {
    _cart.then((cartItems) {
      if (cartItems.isEmpty) {
        _totalPrice = 0.0; // Reset to zero when cart is empty
        _setPrefItems();
      }
    });
  }
    return _totalPrice;
  }
}
