import 'package:flutter/material.dart';

class CustomAppBar {
  static AppBar defaultAppBar(BuildContext context, String title) {
    return AppBar(
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      elevation: 0.0,
      backgroundColor: Colors.white,
      centerTitle: true,
      foregroundColor: Colors.grey,
    );
  }
}
