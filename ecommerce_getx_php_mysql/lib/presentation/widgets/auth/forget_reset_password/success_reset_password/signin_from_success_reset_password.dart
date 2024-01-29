import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/forget_reset_password/success_reset_password_controller.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninButtonFromSuccessResetPassword extends StatelessWidget {
  SigninButtonFromSuccessResetPassword({super.key});

  late SuccessResetPasswordController successResetPasswordController;

  @override
  Widget build(BuildContext context) {
    successResetPasswordController = Get.find();
    return InkWell(
      onTap: () {
        successResetPasswordController.goToLogin();
      },
      child: CustomButtonColored(title: 'SIGN_IN'.tr),
    );
  }
}
