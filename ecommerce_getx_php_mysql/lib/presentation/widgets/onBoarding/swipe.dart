import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/data/data_provider/static/onboardingdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwipeOnBoarding extends StatelessWidget {
  const SwipeOnBoarding({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 5.w),
        Text(
          onBoardingList[index].title!,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox().ex,
        Image.asset(
          onBoardingList[index].imagePath!,
          width: 200.w,
          height: 250.h,
          fit: BoxFit.fill,
        ),
        const SizedBox().ex,
        Text(
          onBoardingList[index].body!,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
