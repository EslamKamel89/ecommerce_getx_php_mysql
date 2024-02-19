import 'package:ecommerce_getx_php_mysql/constants/links.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';

class CartData {
  Crud crud;
  CartData(this.crud);
  Future addToCart(String userId, String itemId) async {
    final t = 'addToCart - CartData '.prt;
    var response = await crud.postData(
      AppLinks.addToCartLink,
      {
        'userId': userId,
        'itemId': itemId,
      },
    );
    var result = response.fold((l) => l, (r) => r);
    result.prm(t);
    return result;
  }

  Future deleteFromCart(String userId, String itemId) async {
    final t = 'deleteFromCart - CartData'.prt;

    var response = await crud.postData(
      AppLinks.delelteItemFromCartLink,
      {
        'userId': userId,
        'itemId': itemId,
      },
    );
    var result = response.fold((l) => l, (r) => r);
    result.prm(t);
    return result;
  }

  Future getItemCountInCart(String userId, String itemId) async {
    final t = 'getItemCountInCart - CartData'.prt;
    var response = await crud.postData(
      AppLinks.getItemCountInCartLink,
      {
        'userId': userId,
        'itemId': itemId,
      },
    );
    var result = response.fold((l) => l, (r) => r);
    result.prm(t);
    return result;
  }

  Future getCartItemsDetails(String userId) async {
    final t = 'getCartItemsDetails - CartData'.prt;
    var response = await crud.postData(
      AppLinks.viewCartLink,
      {'userId': userId},
    );
    var result = response.fold((l) => l, (r) => r);
    result.prm(t);
    return result;
  }
}
