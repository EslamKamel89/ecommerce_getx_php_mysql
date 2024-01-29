import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/forget_reset_password/resetpassword_controller.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ResetPasswordController resetPasswordController = Get.find();
    return InkWell(
      onTap: () {
        if (resetPasswordController.formKey.currentState!.validate()) {
          if (resetPasswordController.passOneController.text == resetPasswordController.passTwoController.text) {
            resetPasswordController.goToResetPasswordSuccess();
          } else {
            Get.snackbar('WARNING'.tr, 'TWO_PASSWORD_DONT_MATCH'.tr);
          }
        }
      },
      child: CustomButtonColored(title: 'SAVE'.tr),
    );
  }
}
