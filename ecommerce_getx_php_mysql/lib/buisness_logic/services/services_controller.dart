// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InitServices extends GetxService {
  late SharedPreferences sharedPreferences;
  Future<InitServices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}
