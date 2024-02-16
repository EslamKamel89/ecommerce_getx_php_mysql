import 'package:ecommerce_getx_php_mysql/constants/links.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';

class FavoriteData {
  Crud crud;
  FavoriteData(this.crud);
  Future postAddFavorite(String userId, String itemId) async {
    var response = await crud.postData(
      AppLinks.addFavoriteLink,
      {
        'userId': userId,
        'itemId': itemId,
      },
    );
    var result = response.fold((l) => l, (r) => r);
    'postAddFavorite response body'.prt;
    result.toString().pr;
    return result;
  }

  Future postRemoveFavorite(String userId, String itemId) async {
    var response = await crud.postData(
      AppLinks.removeFavoriteLink,
      {
        'userId': userId,
        'itemId': itemId,
      },
    );
    var result = response.fold((l) => l, (r) => r);
    'postremoveFavorite response body'.prt;
    result.toString().pr;
    return result;
  }
}
