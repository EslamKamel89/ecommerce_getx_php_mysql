// ignore_for_file: dead_code

import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/signup_folder/signup_controller.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({super.key});
  @override
  Widget build(BuildContext context) {
    SignupController signupController = Get.find<SignupController>();
    return InkWell(
      onTap: () {
        if (signupController.formKey.currentState!.validate()) {
          if (signupController.passOneController.text == signupController.passTwoController.text) {
            signupController.signup();
          } else {
            Get.snackbar('WARNNG'.tr, 'TWO_PASSWORD_DONT_MATCH'.tr);
          }
        }
      },
      child: CustomButtonColored(title: 'SIGN_UP'.tr),
    );
  }
}
