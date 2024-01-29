import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignupControllerAbstract extends GetxController {
  signup();
  goToLogin();
}

class SignupController extends SignupControllerAbstract {
  final GlobalKey<FormState> formKey = GlobalKey();
  late TextEditingController emailController;
  late TextEditingController nameController;
  late TextEditingController phoneController;
  late TextEditingController passOneController;
  late TextEditingController passTwoController;
  @override
  void onInit() {
    emailController = TextEditingController();
    nameController = TextEditingController();
    phoneController = TextEditingController();
    passTwoController = TextEditingController();
    passOneController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    nameController.dispose();
    phoneController.dispose();
    passTwoController.dispose();
    passOneController.dispose();
    super.dispose();
  }

  @override
  signup() {
    Get.toNamed(AppRoutes.verifyOtpAfterSignup);
  }

  @override
  goToLogin() {
    Get.offAllNamed(AppRoutes.login);
  }
}

class SignupBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupController(), fenix: true);
  }
}
