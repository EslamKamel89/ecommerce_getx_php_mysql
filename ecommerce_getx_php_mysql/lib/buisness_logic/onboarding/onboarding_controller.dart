import 'package:ecommerce_getx_php_mysql/buisness_logic/services/services_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:ecommerce_getx_php_mysql/data/data_provider/static/onboardingdata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingControllerAbstract extends GetxController {
  next();
  onPageChanged(int index);
  skip();
}

class OnBoardingController extends OnBoardingControllerAbstract {
  int currentPage = 0;
  late PageController pageController;
  InitServices services = Get.find();
  @override
  next() {
    if (currentPage >= onBoardingList.length - 1) {
      services.sharedPreferences.setBool('ONBOARDING_VIEWED', true);
      Get.offAllNamed(AppRoutes.login);
      return;
    }
    currentPage++;
    pageController.animateToPage(
      currentPage,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
    update();
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  skip() {
    services.sharedPreferences.setBool('ONBOARDING_VIEWED', true);
    Get.offAllNamed(AppRoutes.login);
  }
}

class OnBoardingBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnBoardingController(), fenix: true);
  }
}
