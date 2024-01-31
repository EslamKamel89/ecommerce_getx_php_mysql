// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_getx_php_mysql/constants/links.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';

class CheckEmailData {
  Crud crud;
  CheckEmailData(this.crud);
  Future postCheckEmail(String email) async {
    var response = await crud.postData(
      AppLinks.checkemailLink,
      {
        'email': email,
      },
    );
    var result = response.fold((l) => l, (r) => r);
    'postCheckEmail method from CheckEmailData'.prt;
    result.toString().pr;
    return result;
  }
}
