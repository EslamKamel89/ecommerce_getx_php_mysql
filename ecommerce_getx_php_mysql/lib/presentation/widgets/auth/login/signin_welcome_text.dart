import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInWelcomeTextAndLogo extends StatelessWidget {
  const SignInWelcomeTextAndLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'WELCOME_BACK'.tr,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ).cr,
        const CircularImageAsset(imageName: 'logoecommerce.png', size: 150),
        // Text(
        //   'PLEASE_SIGN_IN'.tr,
        //   style: Theme.of(context).textTheme.bodyMedium,
        //   textAlign: TextAlign.center,
        // ).cr,
      ],
    );
  }
}
