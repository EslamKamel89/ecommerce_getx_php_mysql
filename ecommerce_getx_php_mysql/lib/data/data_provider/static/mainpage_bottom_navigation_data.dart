import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/data/models/mainpage/mainpage_bottom_bar_navigation.dart';
import 'package:ecommerce_getx_php_mysql/presentation/screens/cart_screen.dart';
import 'package:ecommerce_getx_php_mysql/presentation/screens/homepage.dart';
import 'package:ecommerce_getx_php_mysql/presentation/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class MainpageData {
  static final List<MainpageModel> list = [
    MainpageModel(
      title: 'Home',
      index: 0,
      icon: Icons.home,
      child: const Homepage(),
    ),
    MainpageModel(
      title: 'Alerts',
      index: 1,
      icon: Icons.notifications_active_rounded,
      child: const Text('Alerts').cr,
    ),
    MainpageModel(
      title: 'Profile',
      index: 2,
      icon: Icons.person,
      child: const Text('Profile').cr,
    ),
    MainpageModel(
      title: 'Settings',
      index: 3,
      icon: Icons.settings,
      child: const SettingsScreen(),
    ),
    MainpageModel(
      title: 'Cart',
      index: 4,
      icon: Icons.shopping_cart,
      child: CartScreen(),
    )
  ];
}
