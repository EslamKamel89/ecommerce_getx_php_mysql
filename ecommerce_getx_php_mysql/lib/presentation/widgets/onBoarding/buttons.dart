import 'package:ecommerce_getx_php_mysql/buisness_logic/onboarding/onboarding_controller.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/color.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ButtonsOnBoarding extends GetView<OnBoardingController> {
  const ButtonsOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            controller.next();
          },
          child: CustomButtonColored(title: 'CONTINUE'.tr),
        ),
        TextButton(
          onPressed: () {
            controller.skip();
          },
          child: Text(
            'SKIP'.tr,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 17.sp, height: 2, color: AppColors.textLight),
          ),
        ),
      ],
    );
  }
}
