import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordAbstract extends GetxController {
  goToVerifyCode();
}

class ForgetPasswordController extends ForgetPasswordAbstract {
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
  goToVerifyCode() {
    Get.toNamed(AppRoutes.verifyOtpAfterResetPassword);
  }
}

class ForgetPasswordBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgetPasswordController(), fenix: true);
  }
}
