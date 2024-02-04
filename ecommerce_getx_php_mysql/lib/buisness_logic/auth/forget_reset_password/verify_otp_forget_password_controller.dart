import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';
import 'package:ecommerce_getx_php_mysql/core/class/status_request.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/core/functions/handling_status_request.dart';
import 'package:ecommerce_getx_php_mysql/data/data_provider/remote/auth/forget_password/otp_forget_password_data.dart';
import 'package:get/get.dart';

abstract class VerifyOtpForgetPasswordControllerAbstract extends GetxController {
  checkCode(String verificationCode);
  goToResetPassword();
  getData();
}

class VerifyOtpForgetPasswordController extends VerifyOtpForgetPasswordControllerAbstract {
  String? enteredCode;
  static final Crud crud = Get.find();
  String email = '';
  VerifyOtpForgetPasswordData verifyOtpData = VerifyOtpForgetPasswordData(crud);
  StatusRequest statusRequest = StatusRequest.initial;

  @override
  Future getData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyOtpData.postOtp(email, enteredCode!);
    statusRequest = handlingStatusRequest(response);
    if (statusRequest == StatusRequest.success) {
      'The Otp Code you enterd is Correct'.prt;
      goToResetPassword();
    } else {
      'The Otp Code you enterd is Wrong'.prt;
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
    await getData();
  }

  @override
  goToResetPassword() {
    Get.toNamed(
      AppRoutes.resetPassword,
      arguments: {'email': email},
    );
  }
}

class VerifyOtpForgetPasswordBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyOtpForgetPasswordController(), fenix: true);
  }
}
