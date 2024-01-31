import 'package:ecommerce_getx_php_mysql/constants/links.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';

class TestData {
  Crud crud;
  TestData(this.crud);
  Future getData() async {
    var response = await crud.postData(AppLinks.testLink, {});
    var result = response.fold((l) => l, (r) => r);
    return result;
  }
}
