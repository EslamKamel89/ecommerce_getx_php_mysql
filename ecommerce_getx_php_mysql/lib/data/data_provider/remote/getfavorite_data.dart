import 'package:ecommerce_getx_php_mysql/constants/links.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';

class GetFavoriteData {
  Crud crud;
  GetFavoriteData(this.crud);
  Future getFavoritePost(String userId) async {
    var response = await crud.postData(
      AppLinks.getFavoriteLink,
      {
        'userId': userId,
      },
    );
    var result = response.fold((l) => l, (r) => r);
    'getFavoritePost method In GetFavoriteData class'.prt;
    result.toString().pr;
    return result;
  }
}
