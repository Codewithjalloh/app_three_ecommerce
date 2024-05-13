import 'package:flutter/material.dart';

import 'product.dart';

class Shop extends ChangeNotifier {
  // Product for sales
  final List<Product> _shop = [
    Product(
        name: "Stylish Duffel.",
        price: 129.99,
        description:
            "A bag is a kind of soft container. It can hold or carry things.",
        imagePath: "assets/bag1.png"),
    Product(
        name: "Functional Sling",
        price: 189.99,
        description:
            "A bag is a kind of soft container. It can hold or carry things.",
        imagePath: "assets/bag2.png"),
    Product(
        name: "Luxury Purse",
        price: 130.99,
        description:
            "A bag is a kind of soft container. It can hold or carry things.",
        imagePath: "assets/bag3.png"),
    Product(
        name: "Modern Messenger",
        price: 699.99,
        description:
            "A bag is a kind of soft container. It can hold or carry things.",
        imagePath: "assets/bag4.png"),
  ];

  // user cart
  List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
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
