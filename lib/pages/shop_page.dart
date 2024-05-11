import 'package:app_three_ecommerce/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_three_ecommerce/models/shop.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // access products in shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Shop Page"),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, "/cart_page"),
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 25,
          ),
          // SHOP TITLE
          Center(
            child: Text(
              "Pick from a selected lisr of premium products",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ),
          SizedBox(
            height: 550,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  // get each individual product from shop
                  final product = products[index];

                  // return as a product tile UI
                  return MyProductTile(product: product);
                }),
          )
        ],
      ),
    );
  }
}
