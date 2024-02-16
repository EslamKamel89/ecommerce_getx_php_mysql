import 'package:ecommerce_getx_php_mysql/buisness_logic/services/services_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:ecommerce_getx_php_mysql/core/class/status_request.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/core/functions/handling_status_request.dart';
import 'package:ecommerce_getx_php_mysql/data/data_provider/remote/favorite_data.dart';
import 'package:ecommerce_getx_php_mysql/data/data_provider/remote/getfavorite_data.dart';
import 'package:ecommerce_getx_php_mysql/data/models/home/items_model.dart';
import 'package:ecommerce_getx_php_mysql/data/models/user/user_model.dart';
import 'package:get/get.dart';

abstract class FavoriteScreenControllerAbstract extends GetxController {
  getFavoriteItems();
  String getUserIdFromCache();
  goToItemDetails(ItemModel itemModel);
  removeFromFavorite(String itemId);
}

class FavoriteScreenController extends FavoriteScreenControllerAbstract {
  GetFavoriteData getFavoriteData = GetFavoriteData(Get.find());
  StatusRequest statusRequest = StatusRequest.initial;
  StatusRequest removeFavoriteStatusRequest = StatusRequest.initial;
  List<ItemModel> data = [];
  FavoriteData favoriteData = FavoriteData(Get.find());

  @override
  getFavoriteItems() async {
    'getFavoriteItems method in FavoriteController class'.prt;
    statusRequest = StatusRequest.loading;
    data = [];
    update();
    String userId = getUserIdFromCache();
    var response = await getFavoriteData.getFavoritePost(userId);
    statusRequest = handlingStatusRequest(response);
    if (statusRequest == StatusRequest.success) {
      'statusRequest == StatusRequest.success'.pr;
      List temp = response['data'];
      data.addAll(temp.map((e) => ItemModel.fromMap(e)));
      data.pr;
    } else {
      'statusRequest != StatusRequest.success'.pr;
      Future.delayed(const Duration(seconds: 2)).then(
        (_) {
          statusRequest = StatusRequest.initial;
          update();
        },
      );
    }
    update();
  }

  @override
  String getUserIdFromCache() {
    InitServices services = Get.find();
    User currentUser = User.fromJson(services.sharedPreferences.getString('user')!);
    String id = currentUser.id;
    'User ID is fetched from shared preferences in getUserIdFromCache method in FavoriteScreenController class'.prt;
    id.pr;
    return id;
  }

  @override
  void onInit() {
    getFavoriteItems();
    super.onInit();
  }

  @override
  goToItemDetails(ItemModel itemModel) {
    Get.toNamed(AppRoutes.itemsDetails, arguments: {'itemModel': itemModel});
  }

  @override
  removeFromFavorite(String itemId) async {
    "removeFromFavorite method in FavoriteScreenController".prt;
    removeFavoriteStatusRequest = StatusRequest.initial;
    // update();
    String userId = getUserIdFromCache();
    var response = await favoriteData.postRemoveFavorite(userId, itemId);
    removeFavoriteStatusRequest = handlingStatusRequest(response);
    if (removeFavoriteStatusRequest == StatusRequest.success) {
      'removeFavoriteStatusRequest == StatusRequest.success'.pr;
    } else {
      'removeFavoriteStatusRequest != StatusRequest.success'.pr;
      Future.delayed(const Duration(seconds: 2)).then((value) {
        removeFavoriteStatusRequest = StatusRequest.initial;
        update();
      });
    }
    update();
    await getFavoriteItems();
  }
}

class FavoriteScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavoriteScreenController());
  }
}
