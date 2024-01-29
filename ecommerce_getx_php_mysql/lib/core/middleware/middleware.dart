import 'package:ecommerce_getx_php_mysql/buisness_logic/services/services_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartScreenMiddleware extends GetMiddleware {
  @override
  int get priority => 1;
  InitServices services = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    bool onBoardingViewed = services.sharedPreferences.getBool('ONBOARDING_VIEWED') ?? false;
    if (onBoardingViewed) {
      return const RouteSettings(name: AppRoutes.login);
    }
    return null;
  }
}
