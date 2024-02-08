// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:device_preview/device_preview.dart';
import 'package:ecommerce_getx_php_mysql/buisness_logic/locale/change_local_controller.dart';
import 'package:ecommerce_getx_php_mysql/buisness_logic/services/services_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:ecommerce_getx_php_mysql/core/class/responsive_info.dart';
import 'package:ecommerce_getx_php_mysql/core/dependency_injection_in_main/initial_service_dep_injection.dart';
import 'package:ecommerce_getx_php_mysql/core/localization/localization.dart';
import 'package:ecommerce_getx_php_mysql/core/router/router.dart';
import 'package:ecommerce_getx_php_mysql/presentation/screens/auth/login.dart';
import 'package:ecommerce_getx_php_mysql/presentation/screens/language.dart';
import 'package:ecommerce_getx_php_mysql/presentation/screens/onboarding.dart';
import 'package:ecommerce_getx_php_mysql/presentation/screens/test.dart';
import 'package:ecommerce_getx_php_mysql/presentation/themes/themes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MyApp();
      }));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  late LocaleController localeController;
  late DeviceLocale deviceLocale;
  @override
  Widget build(BuildContext context) {
    Sze.init(context);
    Themes.init(context);
    localeController = Get.find<LocaleController>();
    if (localeController.language!.languageCode == 'ar') {
      deviceLocale = DeviceLocale.ar;
    } else {
      deviceLocale = DeviceLocale.en;
    }
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            builder: DevicePreview.appBuilder,
            darkTheme: ThemeData.dark(),
            debugShowCheckedModeBanner: false,
            theme: Themes.customTheme(
              deviceLocale: deviceLocale,
              themeType: ThemeType.light,
            ),
            translations: MyTranslations(),
            locale: localeController.language,
            // initialRoute: AppRoutes.signup,
            initialRoute: AppRoutes.language,
            getPages: routesList,
          );
        });
  }
}
