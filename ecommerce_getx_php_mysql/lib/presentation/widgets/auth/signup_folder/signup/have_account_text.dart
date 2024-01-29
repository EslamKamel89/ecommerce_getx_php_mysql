import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HaveAccountText extends StatelessWidget {
  const HaveAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'HAVE_AN_ACCOUNT'.tr,
      style: Theme.of(context).textTheme.bodyMedium,
      textAlign: TextAlign.center,
    );
  }
}
