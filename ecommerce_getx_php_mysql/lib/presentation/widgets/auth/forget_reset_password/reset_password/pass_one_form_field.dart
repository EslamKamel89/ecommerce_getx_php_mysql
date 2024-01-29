import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/forget_reset_password/resetpassword_controller.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PassOneFormField extends StatelessWidget {
  const PassOneFormField({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    ResetPasswordController resetPasswordController = Get.find();
    return CustomFormField3(
      type: EntryType.passOne,
      controller: resetPasswordController.passOneController,
      icon: const Icon(Icons.email_outlined),
      obsecureAllow: true,
    );
  }
}
