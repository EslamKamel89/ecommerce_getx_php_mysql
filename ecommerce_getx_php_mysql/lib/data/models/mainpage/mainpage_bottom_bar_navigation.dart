import 'package:flutter/material.dart';

class MainpageModel {
  final String title;
  final int index;
  final IconData icon;
  final Widget child;
  MainpageModel({
    required this.title,
    required this.index,
    required this.icon,
    required this.child,
  });
}
