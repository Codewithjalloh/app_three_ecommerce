import 'package:app_three_ecommerce/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';

class MyProductTile extends StatelessWidget {
  final Product product;

  const MyProductTile({
    super.key,
    required this.product,
  });

  // add to cart button pressed
  void addToCart(BuildContext context) {
    // show a dialog box to ask user to confirm to add to cart
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Text("Add this time to your cart"),
              actions: [
                // cancel buttton
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
                    context.read<Shop>().addToCart(product);
                  },
                  child: Text("Yes"),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      width: 300,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [],
      ),
    );
  }
}