import 'package:ecommerce_getx_php_mysql/constants/links.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';

class ResetPasswordData {
  Crud crud;
  ResetPasswordData(this.crud);
  Future postResetPassword(String email, String password) async {
    var response = await crud.postData(
      AppLinks.resetPassworLink,
      {
        'email': email,
        'password': password,
      },
    );
    var result = response.fold((l) => l, (r) => r);
    return result;
  }
}
