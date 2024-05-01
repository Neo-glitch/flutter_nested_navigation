import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_nested_navigation/navigation/nav_utils.dart';
import 'package:flutter_nested_navigation/navigation/updates_nav.dart';
import 'package:flutter_nested_navigation/navigation/wishlist_nav.dart';

/**
 * Screen where the bottom navigation bar will be
 */

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _selectedIndex = 0;

  Map<int, GlobalKey> navigatorKeys = {
    0: GlobalKey(), // wishNavListKey
    1: GlobalKey(), // Update navListKey
    2: GlobalKey(), // Parent
  };

  List<GlobalKey> bottomBarScreenNavKeys = [
    NavKeysUtil.wishListNavKey,
    NavKeysUtil.updatesNavKey
  ];

  Future<bool> _onSystemBackPress() async {
    if (Navigator.canPop(
        bottomBarScreenNavKeys[_selectedIndex].currentState!.context)) {
      // checks to see if current screen is not first screen in nested navigation
      await Navigator.maybePop(
        bottomBarScreenNavKeys[_selectedIndex].currentState!.context,
      );
      return false;
    } else {
      return true;
      // SystemChannels.platform.invokeMethod("SystemNavigator.pop");
    }
  }

  void updateTabBarIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.favorite),
            icon: Icon(Icons.favorite_border),
            label: "WishList",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.notifications),
            icon: Icon(Icons.notifications_none),
            label: "Updates",
          )
        ],
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: WillPopScope(
        onWillPop: _onSystemBackPress,
        child: SafeArea(
          child: IndexedStack(
            index: _selectedIndex,
            children: [
              WishListNav(),
              UpdatesNav(),
            ],
          ),
        ),
      ),
    );
  }
}
