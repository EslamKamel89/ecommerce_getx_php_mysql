import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/data/data_provider/static/onboardingdata.dart';
import 'package:flutter/material.dart';

class SwipeOnBoarding extends StatelessWidget {
  const SwipeOnBoarding({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 5),
        Text(
          onBoardingList[index].title!,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox().ex,
        Image.asset(
          onBoardingList[index].imagePath!,
          width: 200,
          height: 250,
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
