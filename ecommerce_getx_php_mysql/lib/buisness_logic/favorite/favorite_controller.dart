import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/data/models/home/items_model.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class FavoriteAbstract extends GetxController {}

class FavoriteController extends FavoriteAbstract {
  //{itemId , favorite}
  Map favoriteItems = {};
  getFavorite(List<ItemModel> itemsList) {
    for (var item in itemsList) {
      favoriteItems.addAll({item.itemsId: item.favorite});
    }
    'filling Favorite Map Completed'.prt;
    favoriteItems.pr;
  }

  setFavorite(String itemId, String favorite) {
    favoriteItems[itemId] = favorite;
    favorite == '1' ? 'adding item $itemId to the favorites'.prt : 'removing item $itemId from the favorites'.prt;
    'favorite  = $favorite'.pr;
    update();
  }
}
