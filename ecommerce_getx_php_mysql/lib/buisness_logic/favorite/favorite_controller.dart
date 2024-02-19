import 'package:ecommerce_getx_php_mysql/buisness_logic/services/services_controller.dart';
import 'package:ecommerce_getx_php_mysql/core/class/status_request.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/core/functions/handling_status_request.dart';
import 'package:ecommerce_getx_php_mysql/data/data_provider/remote/favorite_data.dart';
import 'package:ecommerce_getx_php_mysql/data/models/home/items_model.dart';
import 'package:ecommerce_getx_php_mysql/data/models/user/user_model.dart';
import 'package:get/get.dart';

abstract class FavoriteAbstract extends GetxController {
  getFavorite(List<ItemModel> itemsList);
  setFavorite(String itemId, String favorite);
  favoriteToDatabase(String userId, String itemId, bool add);
  String getUserIdFromCache();
}

class FavoriteController extends FavoriteAbstract {
  //{itemId , favorite}
  Map favoriteItems = {};
  FavoriteData favoriteData = FavoriteData(Get.find());
  StatusRequest statusRequest = StatusRequest.initial;

  @override
  getFavorite(List<ItemModel> itemsList) {
    for (var item in itemsList) {
      favoriteItems.addAll({item.itemsId: item.favorite});
    }
    'filling Favorite Map Completed'.prt;
    favoriteItems.pr;
  }

  @override
  setFavorite(String itemId, String favorite) {
    favoriteItems[itemId] = favorite;
    bool add = favorite == '1';
    String id;
    add ? 'adding item $itemId to the favorites'.prt : 'removing item $itemId from the favorites'.prt;
    'favorite  = $favorite'.pr;
    id = getUserIdFromCache();
    favoriteToDatabase(id, itemId, add);
    update();
  }

  @override
  favoriteToDatabase(String userId, String itemId, bool add) async {
    'favoriteToDatabase method in favoriteController'.prt;
    statusRequest = StatusRequest.loading;
    update();
    dynamic response;
    if (add) {
      response = await favoriteData.postAddFavorite(userId, itemId);
      'postAddFavorite is triggerd'.pr;
    } else {
      response = await favoriteData.postRemoveFavorite(userId, itemId);
      'postRemoveFavorite is triggerd'.pr;
    }
    statusRequest = handlingStatusRequest(response);
    if (statusRequest == StatusRequest.success) {
      'statusRequest == StatusRequest.success in favoriteToDatabase'.pr;
    } else {
      'statusRequest != StatusRequest.success in favoriteToDatabase'.pr;
      Future.delayed(const Duration(seconds: 2)).then((value) {
        statusRequest = StatusRequest.initial;
        update();
      });
    }
    update();
  }

  @override
  String getUserIdFromCache() {
    InitServices services = Get.find();
    User currentUser = User.fromJson(services.sharedPreferences.getString('user')!);
    String id = currentUser.id;
    'getUserIdFromCache - favoriteController'.prt;
    id.pr;
    return id;
  }
}
