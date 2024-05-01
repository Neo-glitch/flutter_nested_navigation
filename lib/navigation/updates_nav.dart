import 'package:flutter/material.dart';
import 'package:flutter_nested_navigation/navigation/app_route.dart';
import 'package:flutter_nested_navigation/navigation/nav_utils.dart';

/**
 * Second screen in nav bar
 */
class UpdatesNav extends StatefulWidget {
  UpdatesNav({super.key});

  @override
  State<UpdatesNav> createState() => _UpdatesNavState();
}

class _UpdatesNavState extends State<UpdatesNav> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: NavKeysUtil.updatesNavKey,
      initialRoute: "/",
      onGenerateRoute: AppRoute.generateUpdateRoute,
    );
  }
}
