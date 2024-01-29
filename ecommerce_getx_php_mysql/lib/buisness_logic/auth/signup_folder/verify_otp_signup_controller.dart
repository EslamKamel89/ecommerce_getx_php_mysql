import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:get/get.dart';

abstract class VerifyOtpSignupControllerAbstract extends GetxController {
  checkCode(String verificationCode);
  goToSignupSuccess();
}

class VerifyOtpSignupController extends VerifyOtpSignupControllerAbstract {
  String correctCode = '12345';
  String? enteredCode;
  @override
  void checkCode(String verificationCode) {
    enteredCode = verificationCode;
    if (verificationCode == correctCode) {
      goToSignupSuccess();
    }
  }

  @override
  goToSignupSuccess() {
    Get.toNamed(AppRoutes.signupSuccess);
  }
}

class VerifyOtpSignupBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyOtpSignupController(), fenix: true);
  }
}
