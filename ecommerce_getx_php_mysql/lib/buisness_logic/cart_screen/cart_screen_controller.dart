import 'package:ecommerce_getx_php_mysql/buisness_logic/cart/cart_controller.dart';
import 'package:ecommerce_getx_php_mysql/core/class/status_request.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/data/models/cart/cart_model.dart';
import 'package:get/get.dart';

abstract class CartScreenControllerAbstract extends GetxController {
  addToCart(CartModel cartModel);
  removeFromCart(CartModel cartModel);
}

class CartScreenController extends CartScreenControllerAbstract {
  CartController cartController = Get.find();

  @override
  addToCart(CartModel cartModel) async {
    final t = 'addToCart - CartScreenController'.prt;
    await cartController.addToCart(cartModel.itemsId!);
    if (cartController.addStatusRequest == StatusRequest.success) {
      "addToCartStatusRequest == StatusRequest.success".prm(t);
    } else {
      "addToCartStatusRequest != StatusRequest.success".prm(t);
      Get.snackbar('Warining', "Couldn't add an item in Cart");
    }
    cartController.getProductsInCart();
  }

  @override
  removeFromCart(CartModel cartModel) async {
    final t = 'removeFromCart - CartScreenController'.prt;
    await cartController.removeFromCart(cartModel.itemsId!);
    if (cartController.deleteStatusRequest == StatusRequest.success) {
      "addToCartStatusRequest == StatusRequest.success".prm(t);
    } else {
      "addToCartStatusRequest != StatusRequest.success".prm(t);
      Get.snackbar('Warining', "Couldn't remove this item from Cart");
    }
    cartController.getProductsInCart();
  }
}

class CartScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartScreenController());
  }
}
