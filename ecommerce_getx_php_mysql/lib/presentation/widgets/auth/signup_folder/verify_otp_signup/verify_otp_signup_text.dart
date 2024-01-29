import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyOtpSignupText extends StatelessWidget {
  const VerifyOtpSignupText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'ENTER_OTP'.tr,
      style: Theme.of(context).textTheme.bodyMedium,
      textAlign: TextAlign.center,
    );
  }
}
