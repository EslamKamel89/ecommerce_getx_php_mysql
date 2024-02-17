import 'package:ecommerce_getx_php_mysql/buisness_logic/services/services_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:get/get.dart';

abstract class SettingsControllerAbstract extends GetxController {
  logout();
  goToSignin();
}

class SettingsController extends SettingsControllerAbstract {
  InitServices services = Get.find();
  @override
  logout() {
    services.sharedPreferences.clear();
    goToSignin();
  }

  @override
  goToSignin() {
    Get.offAllNamed(AppRoutes.login);
  }
}
