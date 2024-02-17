import 'package:ecommerce_getx_php_mysql/constants/links.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';

class VerifyOtpSignupData {
  Crud crud;
  VerifyOtpSignupData(this.crud);
  Future postOtpSignup(String email, String verifycode) async {
    'postOtpSignup - VerifyOtpSignupData '.prt;
    var response = await crud.postData(
      AppLinks.verifycodeSignupLink,
      {
        'verifycode': verifycode,
        'email': email,
      },
    );
    var result = response.fold((l) => l, (r) => r);
    result.toString().pr;
    return result;
  }

  Future resendOtpData(String email) async {
    "resendOtpData - VerifyOtpSignupData".prt;
    var response = await crud.postData(AppLinks.resetOtpLink, {'email': email});
    var result = response.fold((l) => l, (r) => r);
    result.toString().pr;
    return result;
  }
}
