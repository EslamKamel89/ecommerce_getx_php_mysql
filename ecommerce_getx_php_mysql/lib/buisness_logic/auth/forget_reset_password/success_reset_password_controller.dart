import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordControllerAbstract {
  void goToLogin();
}

class SuccessResetPasswordController extends SuccessResetPasswordControllerAbstract {
  @override
  void goToLogin() {
    Get.offAllNamed(AppRoutes.login);
  }
}

class SuccessResetPasswordBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuccessResetPasswordController(), fenix: true);
  }
}
