import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';
import 'package:ecommerce_getx_php_mysql/core/class/status_request.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/core/functions/handling_status_request.dart';
import 'package:ecommerce_getx_php_mysql/data/data_provider/remote/auth/signup/verify_otp_signup_data.dart';
import 'package:get/get.dart';

abstract class VerifyOtpSignupControllerAbstract extends GetxController {
  checkCode(String verificationCode);
  goToSignupSuccess();
  getData();
}

class VerifyOtpSignupController extends VerifyOtpSignupControllerAbstract {
  String correctCode = '11111';
  String enteredCode = '';
  String email = '';
  static Crud crud = Get.find();
  List data = [];
  StatusRequest statusRequest = StatusRequest.initial;
  VerifyOtpSignupData verifyOtpSignupData = VerifyOtpSignupData(crud);

  @override
  Future getData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyOtpSignupData.postOtpSignup(email, enteredCode);
    statusRequest = handlingStatusRequest(response);
    if (statusRequest == StatusRequest.success) {
      'getData method in VerifyOtpSignUp'.prt;
      'statusRequest == StatusRequest.success'.pr;
    } else {
      Future.delayed(const Duration(seconds: 2)).then(
        (value) {
          statusRequest = StatusRequest.initial;
          update();
        },
      );
    }
    update();
  }

  @override
  void checkCode(String verificationCode) async {
    enteredCode = verificationCode;
    if (verificationCode == correctCode) {
      await getData();
      if (statusRequest == StatusRequest.success) {
        goToSignupSuccess();
      }
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
