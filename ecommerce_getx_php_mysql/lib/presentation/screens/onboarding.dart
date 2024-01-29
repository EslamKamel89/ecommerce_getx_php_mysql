// ignore_for_file: unused_import

import 'package:ecommerce_getx_php_mysql/buisness_logic/onboarding/onboarding_controller.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/core/functions/exit_app_alert.dart';
import 'package:ecommerce_getx_php_mysql/data/data_provider/static/onboardingdata.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/onBoarding/buttons.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/onBoarding/swipe.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/onBoarding/swipedots.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});
  OnBoardingController onBoardingController = Get.find();
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingController());
    return Scaffold(
      body: PopScope(
        canPop: false,
        onPopInvoked: (cond) {
          exitAppAlert(context);
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: PageView.builder(
                    controller: onBoardingController.pageController,
                    onPageChanged: (value) {
                      onBoardingController.onPageChanged(value);
                    },
                    itemCount: onBoardingList.length,
                    itemBuilder: (context, index) {
                      return SwipeOnBoarding(index: index);
                    },
                  ),
                ),
                const SwipeDotsOnBoarding(),
                const SizedBox().ex,
                const ButtonsOnBoarding(),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
