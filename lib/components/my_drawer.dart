import 'package:app_three_ecommerce/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // Drawer header logo
              DrawerHeader(
                child: Center(
                  child: Image.asset(
                    "assets/logo.png",
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),

              // shop title
              MyListTile(
                text: "Shop",
                icon: Icons.home,
                onTap: () => Navigator.pop(context),
              ),

              // cart tile
              MyListTile(
                text: "Cart",
                icon: Icons.shopping_cart,
                onTap: () {
                  // pop drawer first
                  Navigator.pop(context);

                  // goto cart page
                  Navigator.pushNamed(context, "/cart_page");
                },
              ),
            ],
          ),
          // exsit shop tile
          Padding(
            padding: EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
              text: "Exist",
              icon: Icons.logout,
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, "/intro_page", (route) => false),
            ),
          )
        ],
      ),
    );
  }
}
