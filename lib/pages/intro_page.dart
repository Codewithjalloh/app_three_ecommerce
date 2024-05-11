import 'package:flutter/material.dart';

import '../components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // LOGO HERE
            Image.asset(
              height: 300,
              width: 300,
              "assets/logo.png",
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            SizedBox(
              height: 0,
            ),

            // TITLE HERE
            Text(
              "Shopfy",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),

            // SUBTITLE HEREs
            Text(
              "Premium Quality Products",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            SizedBox(
              height: 300,
            ),

            // BUTTON
            MyButton(
              onTap: () => Navigator.pushNamed(context, "/shop_page"),
              child: Icon(
                Icons.arrow_forward,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
