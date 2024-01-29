import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/forget_reset_password/resetpassword_controller.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PassTwoFormField extends StatelessWidget {
  const PassTwoFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ResetPasswordController resetPasswordController = Get.find();
    return CustomFormField3(
      type: EntryType.passTwo,
      controller: resetPasswordController.passTwoController,
      icon: const Icon(Icons.email_outlined),
      obsecureAllow: true,
    );
  }
}
