import 'package:ecommerce_getx_php_mysql/buisness_logic/onboarding/onboarding_controller.dart';
import 'package:ecommerce_getx_php_mysql/data/data_provider/static/onboardingdata.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwipeDotsOnBoarding extends StatelessWidget {
  const SwipeDotsOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(
      builder: (onBoardingCntroller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              onBoardingList.length,
              (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 15),
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: onBoardingCntroller.currentPage == index ? 20 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: onBoardingCntroller.currentPage == index ? AppColors.backgroundColor1 : AppColors.backgroundColor1.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
