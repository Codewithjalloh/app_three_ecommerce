import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';
import '../models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  // remove item from cart method
  void removeItemFromCart(BuildContext context, Product product) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Text("Remove this time from your cart"),
              actions: [
                // cancel
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Cancel"),
                ),

                // yes button
                MaterialButton(
                  onPressed: () {
                    // pop dialog
                    Navigator.pop(context);

                    // add to cart
                    context.read<Shop>().removeFromCart(product);
                  },
                  child: Text("Yes"),
                )
              ],
            ));
  }

  // user pressed pay button
  void payButtonPressed(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text("User wants to pay! connect this app to your payment"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
