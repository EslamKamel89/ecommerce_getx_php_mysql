import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordButton extends StatelessWidget {
  ForgetPasswordButton({super.key});
  final LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        loginController.goToForgetPassword();
      },
      child: Text('FORGET_PASSWORD'.tr, style: Theme.of(context).textTheme.bodyMedium),
    );
  }
}
