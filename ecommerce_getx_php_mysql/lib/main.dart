// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:ecommerce_getx_php_mysql/buisness_logic/locale/change_local_controller.dart';
import 'package:ecommerce_getx_php_mysql/buisness_logic/services/services_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:ecommerce_getx_php_mysql/core/dependency_injection_in_main/initial_service_dep_injection.dart';
import 'package:ecommerce_getx_php_mysql/core/localization/localization.dart';
import 'package:ecommerce_getx_php_mysql/core/router/router.dart';
import 'package:ecommerce_getx_php_mysql/presentation/screens/auth/login.dart';
import 'package:ecommerce_getx_php_mysql/presentation/screens/language.dart';
import 'package:ecommerce_getx_php_mysql/presentation/screens/onboarding.dart';
import 'package:ecommerce_getx_php_mysql/presentation/screens/test.dart';
import 'package:ecommerce_getx_php_mysql/presentation/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  late LocaleController localeController;
  late DeviceLocale deviceLocale;
  @override
  Widget build(BuildContext context) {
    localeController = Get.find<LocaleController>();
    if (localeController.language!.languageCode == 'ar') {
      deviceLocale = DeviceLocale.ar;
    } else {
      deviceLocale = DeviceLocale.en;
    }
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.customTheme(
        deviceLocale: deviceLocale,
        themeType: ThemeType.light,
      ),
      translations: MyTranslations(),
      locale: localeController.language,
      initialRoute: AppRoutes.testScreen,
      // initialRoute: AppRoutes.language,
      getPages: routesList,
    );
  }
}
