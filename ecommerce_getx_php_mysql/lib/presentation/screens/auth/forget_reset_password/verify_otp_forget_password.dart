// ignore_for_file: unused_import

import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/forget_reset_password/verify_otp_forget_password_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/appbar.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/forget_reset_password/verify_data_otp/custom_otp.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/forget_reset_password/verify_data_otp/verify_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyOtpForgetPasswordScreen extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey();
  VerifyOtpForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyOtpForgetPasswordController verifyDataController = Get.find();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar.defaultAppBar(context, 'VERIFY_EMAIL'.tr),
      body: Form(
        key: formKey,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                const VerifyText(),
                const SizedBox(height: 20),
                CustomOTP(
                  numberOfFields: 5,
                  onSubmit: verifyDataController.checkCode,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
