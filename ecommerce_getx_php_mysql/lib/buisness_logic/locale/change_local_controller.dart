import 'package:ecommerce_getx_php_mysql/buisness_logic/services/services_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? language;
  InitServices initServices = Get.find<InitServices>();
  changeLang(String langCode) async {
    await initServices.sharedPreferences.setString('langCode', langCode);
    language = Locale(langCode);
    await Get.updateLocale(language!);
  }

  @override
  void onInit() {
    String? langCode = initServices.sharedPreferences.getString('langCode');
    if (langCode == null) {
      language = Get.deviceLocale;
    } else if (langCode == 'ar') {
      language = const Locale('ar');
    } else {
      language = const Locale('en');
    }
    super.onInit();
  }
}
