import 'package:flutter/material.dart';
import 'package:flutter_nested_navigation/navigation/app_route.dart';
import 'package:flutter_nested_navigation/navigation/nav_utils.dart';

/**
 * First screen in bottom nav
 */
class WishListNav extends StatefulWidget {
  WishListNav({super.key});

  @override
  State<WishListNav> createState() => _WishListNavState();
}

class _WishListNavState extends State<WishListNav> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: NavKeysUtil.wishListNavKey,
      initialRoute: "/",
      onGenerateRoute: AppRoute.generateWishListRoute,
    );
  }
}
