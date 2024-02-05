import 'package:ecommerce_getx_php_mysql/buisness_logic/homepage/homepage_controller.dart';
import 'package:ecommerce_getx_php_mysql/buisness_logic/services/services_controller.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/data/models/user/user_model.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  final HomepageController homepageController = Get.find();
  @override
  Widget build(BuildContext context) {
    InitServices service = Get.find();
    // service.sharedPreferences.clear();
    String? userJson = service.sharedPreferences.getString('user');
    User currentUser;
    'Testing Saving Data'.prt;
    if (userJson != null) {
      currentUser = User.fromJson(userJson);
      currentUser.toString().pr;
    } else {
      'Error'.pr;
    }
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar.defaultAppBar(context, 'HOMEPAGE'.tr),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: const [
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
