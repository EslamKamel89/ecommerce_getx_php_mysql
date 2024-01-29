import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/signup_folder/signup_controller.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninButton extends StatelessWidget {
  const SigninButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SignupController signupController = Get.find<SignupController>();
    return InkWell(
        onTap: () {
          signupController.goToLogin();
        },
        child: CustomButtonColored(title: 'SIGN_IN'.tr));
  }
}
