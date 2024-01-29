import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/signup_folder/success_signup_controller.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninButtonFromSuccessSignup extends StatelessWidget {
  SigninButtonFromSuccessSignup({super.key});

  late SuccessSignupController successSignupController;

  @override
  Widget build(BuildContext context) {
    successSignupController = Get.find();
    return InkWell(
      onTap: () {
        successSignupController.goToLogin();
      },
      child: CustomButtonColored(title: 'SIGN_IN'.tr),
    );
  }
}
