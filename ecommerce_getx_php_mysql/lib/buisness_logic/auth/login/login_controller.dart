import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginControllerAbstract extends GetxController {
  login();
  goToSignup();
  goToForgetPassword();
}

class LoginController extends LoginControllerAbstract {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  login() {}

  @override
  goToSignup() {
    Get.delete<LoginController>();
    Get.toNamed(AppRoutes.signup);
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoutes.forgetPassword);
  }
}

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(), fenix: true);
  }
}
