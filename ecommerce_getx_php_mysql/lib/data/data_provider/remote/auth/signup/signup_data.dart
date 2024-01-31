import 'package:ecommerce_getx_php_mysql/constants/links.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';

class SignupData {
  Crud crud;
  SignupData(this.crud);
  Future postSignup(
    String username,
    String email,
    String phone,
    String password,
  ) async {
    var response = await crud.postData(
      AppLinks.signup,
      {
        'username': username,
        'email': email,
        'phone': phone,
        'password': password,
      },
    );
    var result = response.fold((l) => l, (r) => r);
    return result;
  }
}
