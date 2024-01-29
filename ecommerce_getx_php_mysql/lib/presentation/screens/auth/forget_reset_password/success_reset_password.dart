import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/forget_reset_password/success_reset_password_controller.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/appbar.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/forget_reset_password/success_reset_password/check_icon_from_success_reset_password.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/forget_reset_password/success_reset_password/signin_from_success_reset_password.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/forget_reset_password/success_reset_password/success_reset_password_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordSuccessScreen extends StatelessWidget {
  ResetPasswordSuccessScreen({super.key});
  late SuccessResetPasswordController successResetPasswordController;

  @override
  Widget build(BuildContext context) {
    successResetPasswordController = Get.find();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar.defaultAppBar(context, 'RESET_PASSWORD_SUCCESS'.tr),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: double.infinity),
              const CheckIconFromSuccessResetPassword(),
              const SuccessResetPasswordText(),
              const Spacer(),
              SigninButtonFromSuccessResetPassword(),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
