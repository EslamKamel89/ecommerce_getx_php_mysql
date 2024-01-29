import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/signup_folder/verify_otp_signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VeirifyOtpSignup extends StatelessWidget {
  const VeirifyOtpSignup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    VerifyOtpSignupController verifyOtpSignupController = Get.find();
    return OtpTextField(
        numberOfFields: 5,
        borderRadius: BorderRadius.circular(50),
        borderColor: const Color(0xFF512DA8),
        //set to true to show as box or false to show as dash
        showFieldAsBox: true,
        //runs when a code is typed in
        onCodeChanged: (String code) {
          //handle validation or checks here
        },
        //runs when every textfield is filled
        onSubmit: verifyOtpSignupController.checkCode);
  }
}
