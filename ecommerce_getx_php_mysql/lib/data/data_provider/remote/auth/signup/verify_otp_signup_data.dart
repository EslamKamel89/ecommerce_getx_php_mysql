import 'package:ecommerce_getx_php_mysql/constants/links.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';

class VerifyOtpSignupData {
  Crud crud;
  VerifyOtpSignupData(this.crud);
  Future postOtpSignup(String email, String verifycode) async {
    var response = await crud.postData(
      AppLinks.verifycodeSignupLink,
      {
        'verifycode': verifycode,
        'email': email,
      },
    );
    var result = response.fold((l) => l, (r) => r);
    'verify otp signup response body'.prt;
    result.toString().pr;
    return result;
  }
}
