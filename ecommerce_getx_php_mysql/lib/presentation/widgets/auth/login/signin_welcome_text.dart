import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
        ).cr,
        CircularImageAsset(imageName: 'logoecommerce.png', size: 100.w),
        // Text(
        //   'PLEASE_SIGN_IN'.tr,
        //   style: Theme.of(context).textTheme.bodyMedium,
        //   textAlign: TextAlign.center,
        // ).cr,
      ],
    );
  }
}
