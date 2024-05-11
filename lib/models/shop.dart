import 'package:flutter/material.dart';

import 'product.dart';

class Shop extends ChangeNotifier {
  // Product for sales
  final List<Product> _shop = [
    Product(
        name: "Bag 1",
        price: 129.99,
        description: "Bag made in Italy",
        imagePath: "assets/bag1.png"),
    Product(
        name: "Bag 2",
        price: 189.99,
        description: "Bag made in UK",
        imagePath: "assets/bag2.png"),
    Product(
        name: "Bag 3",
        price: 130.99,
        description: "Bag made in Ghana",
        imagePath: "assets/bag3.png"),
    Product(
        name: "Bag41",
        price: 699.99,
        description: "Bag made in France",
        imagePath: "assets/bag4.png"),
  ];

  // user cart
  List<Product> _cart = [];

  // get product list
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove it from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
