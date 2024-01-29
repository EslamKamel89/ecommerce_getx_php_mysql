import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:get/get.dart';

abstract class SuccessSignupControllerAbstract {
  void goToLogin();
}

class SuccessSignupController extends SuccessSignupControllerAbstract {
  @override
  void goToLogin() {
    Get.offAllNamed(AppRoutes.login);
  }
}

class SuccessSignupBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuccessSignupController(), fenix: true);
  }
}
