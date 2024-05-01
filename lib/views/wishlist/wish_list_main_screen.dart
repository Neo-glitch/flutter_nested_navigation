import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * WishList Main Screen
 */
class WishListMainScreen extends StatelessWidget {
  const WishListMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WishList Main Screen"),
        centerTitle: true,
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton.filled(
              borderRadius: BorderRadius.circular(12),
              child: Text("Go to Sub screen"),
              onPressed: () {
                Navigator.pushNamed(context, "/wishlist_details");
              },
            )
          ],
        ),
      ),
    );
  }
}
