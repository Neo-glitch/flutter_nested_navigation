import 'package:flutter/material.dart';
import 'package:flutter_nested_navigation/navigation/updates_nav.dart';
import 'package:flutter_nested_navigation/views/main_wrapper.dart';
import 'package:flutter_nested_navigation/views/profile_screen.dart';
import 'package:flutter_nested_navigation/views/update/update_main_screen.dart';
import 'package:flutter_nested_navigation/views/update/update_sub_screen.dart';
import 'package:flutter_nested_navigation/views/wishlist/wish_list_main_screen.dart';
import 'package:flutter_nested_navigation/views/wishlist/wishlist_sub_screen.dart';
import 'package:page_transition/page_transition.dart';

class AppRoute {
  // private constructor
  AppRoute._() {}

  static Route<dynamic> generateWishListRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            settings: settings,
            builder: (context) {
              return WishListMainScreen();
            });
      case "/wishlist_details":
        return MaterialPageRoute(
            settings: settings,
            builder: (context) {
              return WishListSubScreen();
            });
      default:
        return MaterialPageRoute(builder: (context) {
          return Text("Route not valid");
        });
    }
  }

  static Route<dynamic> generateUpdateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            settings: settings,
            builder: (context) {
              return UpdatesMainScreen();
            });
      case "/update_details":
        return MaterialPageRoute(
            settings: settings,
            builder: (context) {
              return UpdateSubScreen();
            });
      default:
        return MaterialPageRoute(builder: (context) {
          return Text("Route not valid");
        });
    }
  }

  static Route<dynamic> generateMainAppRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            settings: settings,
            builder: (context) {
              return MainWrapper();
            });
      case "/profile":
        // adds animation too when navigating to this screen
        return PageTransition(
          child: ProfileScreen(),
          type: PageTransitionType.rightToLeft,
          // duration: Duration(milliseconds: 1000),
        );
      default:
        return MaterialPageRoute(builder: (context) {
          return Text("Route not valid");
        });
    }
  }
}
