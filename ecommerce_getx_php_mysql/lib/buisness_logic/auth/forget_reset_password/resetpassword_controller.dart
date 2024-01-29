import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordControllerAbstract extends GetxController {
  goToResetPasswordSuccess();
}

class ResetPasswordController extends ResetPasswordControllerAbstract {
  GlobalKey<FormState> formKey = GlobalKey();
  late TextEditingController passOneController;
  late TextEditingController passTwoController;
  @override
  void onInit() {
    passOneController = TextEditingController();
    passTwoController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    passOneController.dispose();
    passTwoController.dispose();
    super.dispose();
  }

  @override
  goToResetPasswordSuccess() {
    Get.toNamed(AppRoutes.resetPasswordSuccess);
  }
}

class ResetPasswordBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetPasswordController(), fenix: true);
  }
}
