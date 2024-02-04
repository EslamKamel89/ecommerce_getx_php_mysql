import 'package:ecommerce_getx_php_mysql/constants/links.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';

class VerifyOtpForgetPasswordData {
  Crud crud;
  VerifyOtpForgetPasswordData(this.crud);
  Future postOtp(String email, String otp) async {
    var response = await crud.postData(
      AppLinks.verifyCodeForgetPasswordLink,
      {
        'email': email,
        'verifyCode': otp,
      },
    );
    var result = response.fold((l) => l, (r) => r);
    return result;
  }
}
