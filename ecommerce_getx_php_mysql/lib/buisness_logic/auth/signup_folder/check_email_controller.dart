import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheckEmailControllerAbstract extends GetxController {
  checkEmail();
  goToVerifyOtpAfterSignUp();
}

class CheckEmailController extends CheckEmailControllerAbstract {
  final GlobalKey<FormState> formKey = GlobalKey();
  late TextEditingController emailController;

  @override
  void onInit() {
    emailController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  checkEmail() {}

  @override
  goToVerifyOtpAfterSignUp() {
    Get.toNamed(AppRoutes.verifyOtpAfterSignup);
  }
}

class CheckEmailBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckEmailController(), fenix: true);
  }
}
