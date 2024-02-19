import 'package:ecommerce_getx_php_mysql/buisness_logic/cart/cart_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:ecommerce_getx_php_mysql/core/class/status_request.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/data/models/home/items_model.dart';
import 'package:get/get.dart';

abstract class ItemDetailsControllerAbstract extends GetxController {
  init();
  addToCart();
  incrementQuantity();
  decrementQuantity();
  goToCart();
  getItemCountFromCart();
  deleteOneItemFromCart();
}

class ItemDetailsController extends ItemDetailsControllerAbstract {
  late ItemModel itemModel;
  int productQuantity = 1;
  int itemCountInCart = 0;
  CartController cartController = Get.find();
  @override
  init() async {
    itemModel = Get.arguments['itemModel'];
    await getItemCountFromCart();
  }

  @override
  void onInit() {
    init();
    super.onInit();
  }

  @override
  addToCart() async {
    'addToCart - ItemsDetailsController'.prt;
    bool addToCartSuccess = false;
    for (var i = 0; i < productQuantity; i++) {
      await cartController.addToCart(itemModel.itemsId!);
      if (cartController.addStatusRequest == StatusRequest.success) {
        addToCartSuccess = true;
      } else {
        addToCartSuccess = false;
      }
    }
    if (addToCartSuccess) {
      'addToCartSuccess = true'.pr;
      Get.snackbar('Cart', '$productQuantity Products Added Successfuly to Cart');
    } else {
      'addToCartSuccess = false'.pr;
      Get.snackbar('Cart', 'Failed to add $productQuantity product to Cart');
    }
    await getItemCountFromCart();
  }

  @override
  decrementQuantity() {
    'decrementQuantity - ItemsDetailsController'.prt;
    if (productQuantity >= 2) {
      productQuantity--;
      update();
    }
    productQuantity.pr;
  }

  @override
  incrementQuantity() {
    'incrementQuantity - ItemsDetailsController'.prt;
    productQuantity++;
    productQuantity.pr;
    update();
  }

  @override
  goToCart() {
    Get.toNamed(AppRoutes.cart);
  }

  @override
  getItemCountFromCart() async {
    'getItemCountFromCart - ItemDetailsController'.prt;
    String? count = await cartController.getItemCountInCart(itemModel.itemsId!);
    if (count != null) {
      itemCountInCart = int.parse(count);
      'count != null'.pr;
      update();
    } else {
      'count == null'.pr;
    }
  }

  @override
  deleteOneItemFromCart() async {
    'deleteOneItemFromCart - ItemDetailsController'.prt;
    var response = await cartController.removeFromCart(itemModel.itemsId!);

    if (cartController.deleteStatusRequest == StatusRequest.success || cartController.deleteStatusRequest == StatusRequest.noData) {
      'cartController.deleteStatusRequest == StatusRequest.success'.pr;
      init();
      update();
    } else {
      'cartController.deleteStatusRequest != StatusRequest.success'.pr;
      Get.snackbar('Warning', 'Failed to decrement this product items in the cart by one');
    }
  }
}

class ItemDetailsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ItemDetailsController(), fenix: true);
  }
}
