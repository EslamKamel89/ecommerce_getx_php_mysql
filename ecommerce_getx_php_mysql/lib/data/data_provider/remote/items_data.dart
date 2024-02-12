import 'package:ecommerce_getx_php_mysql/constants/links.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);
  Future postFetchItemByCategory(String categoryId) async {
    var response = await crud.postData(
      AppLinks.itemsLink,
      {'categoryId': categoryId},
    );
    var result = response.fold((l) => l, (r) => r);
    'postFetchItemByCategory method from ItemsData'.prt;
    result.toString().pr;
    return result;
  }
}
