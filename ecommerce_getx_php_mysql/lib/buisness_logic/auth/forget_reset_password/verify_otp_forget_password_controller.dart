import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:get/get.dart';

abstract class VerifyOtpForgetPasswordControllerAbstract extends GetxController {
  checkCode(String verificationCode);
  goToResetPassword();
}

class VerifyOtpForgetPasswordController extends VerifyOtpForgetPasswordControllerAbstract {
  String correctCode = '12345';
  String? enteredCode;
  @override
  void checkCode(String verificationCode) {
    enteredCode = verificationCode;
    if (verificationCode == correctCode) {
      goToResetPassword();
    }
  }

  @override
  goToResetPassword() {
    Get.toNamed(AppRoutes.resetPassword);
  }
}

class VerifyOtpForgetPasswordBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyOtpForgetPasswordController(), fenix: true);
  }
}
