import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpWelcomeTextAndLogo extends StatelessWidget {
  const SignUpWelcomeTextAndLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'WELCOME'.tr,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ).cr,
        // const CircularImageAsset(imageName: 'logoecommerce.png', size: 150),
      ],
    );
  }
}
