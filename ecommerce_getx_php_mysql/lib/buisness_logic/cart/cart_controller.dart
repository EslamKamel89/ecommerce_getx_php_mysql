import 'package:ecommerce_getx_php_mysql/buisness_logic/services/services_controller.dart';
import 'package:ecommerce_getx_php_mysql/core/class/status_request.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/core/functions/handling_status_request.dart';
import 'package:ecommerce_getx_php_mysql/data/data_provider/remote/cart/cart_data.dart';
import 'package:ecommerce_getx_php_mysql/data/models/cart/cart_model.dart';
import 'package:ecommerce_getx_php_mysql/data/models/cart/cart_total_price_model.dart';
import 'package:ecommerce_getx_php_mysql/data/models/user/user_model.dart';
import 'package:get/get.dart';

abstract class CartControllerAbstract extends GetxController {
  addToCart(String itemId);
  removeFromCart(String itemId);
  getProductsInCart();
  getUserIdFromCache();
  getItemCountInCart(String itemId);
}

class CartController extends CartControllerAbstract {
  StatusRequest addStatusRequest = StatusRequest.initial;
  StatusRequest viewStatusRequest = StatusRequest.initial;
  StatusRequest deleteStatusRequest = StatusRequest.initial;
  StatusRequest getItemCountStatusRequest = StatusRequest.initial;
  CartData cartData = CartData(Get.find());
  List<CartModel> itemsInCartList = [];
  CartTotalPriceModel cartTotalPriceModel = CartTotalPriceModel();

  init() async {
    await getProductsInCart();
  }

  @override
  void onInit() {
    init();
    super.onInit();
  }

  @override
  Future addToCart(String itemId) async {
    final t = 'addToCart - CartController '.prt;
    addStatusRequest = StatusRequest.loading;
    update();
    String userId = getUserIdFromCache();
    var response = (await cartData.addToCart(userId, itemId));
    addStatusRequest = handlingStatusRequest(response);
    if (addStatusRequest == StatusRequest.success) {
      'addStatusRequest == StatusRequest.success'.prm(t);
    } else {
      'addStatusRequest != StatusRequest.success'.prm(t);
      Future.delayed(const Duration(seconds: 2)).then(
        (value) {
          addStatusRequest = StatusRequest.initial;
          update();
        },
      );
    }
    update();
  }

  @override
  Future getProductsInCart() async {
    final t = 'getProductsInCart - CartController'.prt;
    viewStatusRequest = StatusRequest.loading;
    itemsInCartList = [];
    update();
    String userId = getUserIdFromCache();
    var response = await cartData.getCartItemsDetails(userId);
    viewStatusRequest = handlingStatusRequest(response);
    if (viewStatusRequest == StatusRequest.success) {
      'addStatusRequest == StatusRequest.success'.prm(t);
      itemsInCartList = (response['data']['cartview'] as List).map((e) => CartModel.fromMap(e)).toList();
      itemsInCartList.prm(t);
      cartTotalPriceModel = CartTotalPriceModel.fromMap(response['data']['totalPriceAndCount']);
      cartTotalPriceModel.prm(t);
    } else {
      'addStatusRequest != StatusRequest.success'.prm(t);
      Future.delayed(const Duration(seconds: 2)).then(
        (value) {
          viewStatusRequest = StatusRequest.initial;
          update();
        },
      );
    }
    update();
  }

  @override
  Future removeFromCart(String itemId) async {
    final t = 'removeFromCart - CartController'.prt;
    deleteStatusRequest = StatusRequest.loading;
    update();
    String userId = getUserIdFromCache();
    var response = await cartData.deleteFromCart(userId, itemId);
    deleteStatusRequest = handlingStatusRequest(response);
    if (deleteStatusRequest == StatusRequest.success) {
      'addStatusRequest == StatusRequest.success'.prm(t);
    } else {
      'addStatusRequest != StatusRequest.success'.prm(t);
      Future.delayed(const Duration(seconds: 2)).then(
        (value) {
          deleteStatusRequest = StatusRequest.initial;
          update();
        },
      );
    }
    update();
  }

  @override
  String getUserIdFromCache() {
    final t = 'getUserIdFromCache - CartController'.prt;
    InitServices services = Get.find();
    User currentUser = User.fromJson(services.sharedPreferences.getString('user')!);
    String id = currentUser.id;
    id.prm(t);
    return id;
  }

/*
{
  "status": "success",
  "data": {
    "count_items": 4
  }
}
 */
  @override
  Future<String?> getItemCountInCart(String itemId) async {
    final t = 'getItemCountInCart - CartController'.prt;
    String userId = getUserIdFromCache();
    var response = await cartData.getItemCountInCart(userId, itemId);
    getItemCountStatusRequest = handlingStatusRequest(response);
    if (getItemCountStatusRequest == StatusRequest.success) {
      String result = response['data']['count_items'].toString().prm(t);
      return result;
    } else {
      'getItemCountStatusRequest != StatusRequest.success'.prm(t);
      return null;
    }
  }
}

class CartBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartController(), fenix: true);
  }
}
