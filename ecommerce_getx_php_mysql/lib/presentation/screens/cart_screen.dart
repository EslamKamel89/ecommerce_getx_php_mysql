// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: dead_code

import 'package:ecommerce_getx_php_mysql/buisness_logic/cart/cart_controller.dart';
import 'package:ecommerce_getx_php_mysql/buisness_logic/cart_screen/cart_screen_controller.dart';
import 'package:ecommerce_getx_php_mysql/core/class/handling_data_view.dart';
import 'package:ecommerce_getx_php_mysql/data/models/cart/cart_model.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/appbar.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/cart/item_in_cart_view.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/cart/place_order_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  bool bottomSheetOpen = false;
  @override
  Widget build(BuildContext context) {
    CartController controller = Get.put(CartController());
    Get.put(CartScreenController());
    controller.getProductsInCart();
    Future.delayed(const Duration(seconds: 2)).then((value) => _openBottomSheet());
    return GetBuilder<CartController>(builder: (controller) {
      return Scaffold(
        key: scaffoldKey,
        appBar: CustomAppBar.cartAppBar(context, ' My Cart'),
        floatingActionButton: _floatingActionButton(context),
        body: HandlingDataView(
          statusRequest: controller.viewStatusRequest,
          height: 400.h,
          // statusRequest: StatusRequest.initial,
          child: Container(
            padding: EdgeInsets.all(8.w),
            child: ListView.builder(
              itemCount: controller.itemsInCartList.length,
              itemBuilder: (context, index) {
                CartModel cartModel = controller.itemsInCartList[index];
                return ItemInCartView(
                  cartModel: cartModel,
                );
              },
            ),
          ),
        ),
      );
    });
  }

  FloatingActionButton _floatingActionButton(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'addToCart',
      child: Icon(Icons.info, size: 30.w),
      onPressed: () {
        if (!bottomSheetOpen) {
          _openBottomSheet();
        } else {
          bottomSheetOpen = false;
          Navigator.of(context).maybePop();
        }
      },
    );
  }

  void _openBottomSheet() {
    scaffoldKey.currentState!.showBottomSheet((_) => placeOrderButton());
    bottomSheetOpen = true;
  }
}
