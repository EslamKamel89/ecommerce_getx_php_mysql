import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/signup_folder/verify_otp_signup_controller.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResendVerificationCodeButton extends StatelessWidget {
  const ResendVerificationCodeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    VerifyOtpSignupController controller = Get.find();
    return InkWell(
      onTap: () {
        controller.resendOtp();
      },
      child: const CustomButtonColored(title: 'Resend Verfication Code'),
    );
  }
}
