import 'package:ecommerce_getx_php_mysql/buisness_logic/locale/change_local_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// will be shown for the first time you start the app and will ask the user to
// check for
class ChooseLanguageScreen extends StatelessWidget {
  const ChooseLanguageScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Choose Device Language',
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.white),
        ),
        toolbarHeight: 50.h,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LanguageSelectionButton(),
      ),
    );
  }
}

class LanguageSelectionButton extends StatelessWidget {
  LanguageSelectionButton({super.key});
  final LocaleController localeController = Get.find<LocaleController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'CHOOSE_LANGUAGE'.tr,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 20),
        InkWell(
          onTap: () {
            localeController.changeLang('en');
            Get.toNamed(AppRoutes.onBoarding);
          },
          child: CustomButtonColored(title: 'ENGLISH'.tr),
        ),
        InkWell(
          onTap: () {
            localeController.changeLang('ar');
            Get.toNamed(AppRoutes.onBoarding);
          },
          child: CustomButtonColored(title: 'ARABIC'.tr),
        ),
      ],
    );
  }
}
