import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetText extends StatelessWidget {
  const ResetText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'RESET_TEXT'.tr,
      style: Theme.of(context).textTheme.bodyMedium,
      textAlign: TextAlign.center,
    );
  }
}
