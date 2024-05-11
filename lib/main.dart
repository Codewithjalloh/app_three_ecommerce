import 'package:app_three_ecommerce/models/shop.dart';
import 'package:app_three_ecommerce/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/cart_page.dart';
import 'pages/intro_page.dart';
import 'pages/shop_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: lightMode,
      routes: {
        "/intro_page": (context) => IntroPage(),
        "/shop_page": (context) => ShopPage(),
        "/cart_page": (context) => CartPage(),
      },
    );
  }
}
