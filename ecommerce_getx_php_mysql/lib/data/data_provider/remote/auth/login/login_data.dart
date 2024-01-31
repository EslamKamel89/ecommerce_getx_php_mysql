// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_getx_php_mysql/constants/links.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);
  Future postLogin(String email, String password) async {
    var response = await crud.postData(
      AppLinks.loginLink,
      {
        'email': email,
        'password': password,
      },
    );
    var result = response.fold((l) => l, (r) => r);
    'postLogin method from LoginData'.prt;
    result.toString().pr;
    return result;
  }
}
