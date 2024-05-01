import 'package:flutter/material.dart';

class WishListSubScreen extends StatelessWidget {
  const WishListSubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WishList Sub screen"),
      ),
      body: Text("This is the subscreen of the wishlist"),
    );
  }
}
