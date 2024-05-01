import 'package:flutter/material.dart';

class NavKeysUtil {
  NavKeysUtil._();

  static GlobalKey<NavigatorState> mainNavKey =
      GlobalKey(debugLabel: "mainNav");

  static GlobalKey<NavigatorState> wishListNavKey =
      GlobalKey<NavigatorState>(debugLabel: "wishlistnav");

  static GlobalKey<NavigatorState> updatesNavKey =
      GlobalKey<NavigatorState>(debugLabel: "updatesNav");
}
