import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyText extends StatelessWidget {
  const VerifyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'VERIFY_TEXT'.tr,
      style: Theme.of(context).textTheme.bodyMedium,
      textAlign: TextAlign.center,
    );
  }
}
