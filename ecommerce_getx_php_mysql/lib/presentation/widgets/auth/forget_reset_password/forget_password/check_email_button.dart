import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/forget_reset_password/forgetpassword_controller.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckEmailButton extends StatelessWidget {
  const CheckEmailButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ForgetPasswordController forgetPassordController = Get.find();
    return InkWell(
      onTap: () {
        if (forgetPassordController.formKey.currentState!.validate()) {
          forgetPassordController.goToVerifyCode();
        }
      },
      child: CustomButtonColored(title: 'CHECK_EMAIL'.tr),
    );
  }
}
