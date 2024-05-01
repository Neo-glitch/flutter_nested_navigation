import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nested_navigation/main.dart';
import 'package:flutter_nested_navigation/navigation/nav_utils.dart';
import 'package:flutter_nested_navigation/views/main_wrapper.dart';

class UpdatesMainScreen extends StatelessWidget {
  const UpdatesMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Updates Main Screen"),
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
                Navigator.pushNamed(context, "/update_details");
              },
            ),
            SizedBox(
              height: 40,
            ),
            CupertinoButton.filled(
              borderRadius: BorderRadius.circular(12),
              child: Text("Go to Profile Screen"),
              onPressed: () {
                // uses the main app navigator to nav
                NavKeysUtil.mainNavKey.currentState?.pushNamed("/profile");
              },
            )
          ],
        ),
      ),
    );
  }
}
