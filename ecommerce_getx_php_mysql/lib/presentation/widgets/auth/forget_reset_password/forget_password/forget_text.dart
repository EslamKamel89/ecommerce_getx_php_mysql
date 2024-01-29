import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetText extends StatelessWidget {
  const ForgetText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'FORGET_TEXT'.tr,
      style: Theme.of(context).textTheme.bodyMedium,
      textAlign: TextAlign.center,
    );
  }
}
