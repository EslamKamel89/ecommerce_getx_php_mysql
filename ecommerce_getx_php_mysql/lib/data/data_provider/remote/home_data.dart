import 'package:ecommerce_getx_php_mysql/constants/links.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';

class HomepageData {
  Crud crud;
  HomepageData(this.crud);
  Future postFetchHomeData() async {
    var response = await crud.postData(AppLinks.homeViewLink, {});
    var result = response.fold((l) => l, (r) => r);
    'postFetchHomeData method from HomeData'.prt;
    result.toString().pr;
    return result;
  }
}
