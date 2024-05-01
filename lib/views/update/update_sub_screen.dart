import 'package:flutter/material.dart';

class UpdateSubScreen extends StatelessWidget {
  const UpdateSubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update SubScreen"),
      ),
      body: Text("This is the subscreen of update"),
    );
  }
}
