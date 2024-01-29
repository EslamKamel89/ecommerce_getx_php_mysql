import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/login/login_controller.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateNewAccount extends StatelessWidget {
  CreateNewAccount({super.key});
  final LoginController loginController = Get.find();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        loginController.goToSignup();
      },
      child: CustomButtonColored(title: 'SIGN_UP'.tr),
    );
  }
}
