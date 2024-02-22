import 'package:ecommerce_getx_php_mysql/constants/links.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';

class SearchData {
  Crud crud;
  SearchData(this.crud);
  Future searchPost(String itemName) async {
    final t = 'searchPost - SearchData'.prt;
    final response = await crud.postData(
      AppLinks.searchItemsLink,
      {'itemName': itemName},
    );
    final result = response.fold((l) => l, (r) => r);
    result.prm(t);
    return result;
  }
}
