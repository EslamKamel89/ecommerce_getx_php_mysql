import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/login/login_controller.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailAndPasswordFormField extends StatelessWidget {
  const EmailAndPasswordFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.find();
    return Column(
      children: [
        CustomFormField3(
          controller: loginController.emailController,
          type: EntryType.email,
          icon: const Icon(Icons.email_outlined),
        ),
        CustomFormField3(
          type: EntryType.passOne,
          controller: loginController.passwordController,
          obsecureAllow: true,
        ),
      ],
    );
  }
}
