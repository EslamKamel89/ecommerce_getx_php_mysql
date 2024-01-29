import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPasswordText extends StatelessWidget {
  const SuccessResetPasswordText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'RESET_PASSWORD_SUCCESS_TEXT'.tr,
      style: Theme.of(context).textTheme.bodyMedium,
      textAlign: TextAlign.center,
    );
  }
}
