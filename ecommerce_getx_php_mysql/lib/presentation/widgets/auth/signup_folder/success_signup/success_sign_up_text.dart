import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignUpText extends StatelessWidget {
  const SuccessSignUpText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'SUCCESS_SIGNUP_GO_TO_LOGIN_TEXT'.tr,
      style: Theme.of(context).textTheme.bodyMedium,
      textAlign: TextAlign.center,
    );
  }
}
