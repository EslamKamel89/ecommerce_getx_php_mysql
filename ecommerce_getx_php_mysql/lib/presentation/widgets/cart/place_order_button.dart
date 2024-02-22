import 'package:ecommerce_getx_php_mysql/buisness_logic/cart/cart_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/presentation/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Widget placeOrderButton() {
  CartController controller = Get.find();
  final int productCount = controller.itemsInCartList.length;
  return Stack(
    alignment: Alignment.bottomCenter,
    clipBehavior: Clip.none,
    children: [
      Container(
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20.w),
          ),
          height: productCount <= 1 ? 180.h : 220.h,
          padding: EdgeInsets.only(top: 30.h, left: 60.w, right: 60.w),
          child: GetBuilder<CartController>(builder: (contrller) {
            final int price = int.parse(controller.cartTotalPriceModel.totalprice ?? '0');
            const int shipingPrice = 200;
            final int totalPrice = price + shipingPrice;
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (productCount > 1)
                  _productAndUnitsCount(
                    unitsCount: contrller.cartTotalPriceModel.totalcount!,
                    productCount: productCount,
                  ),
                _totalCartDetails('Price', '$price'),
                _totalCartDetails('Shiping', '$shipingPrice'),
                const Divider(),
                _totalCartDetails('Total Price', '$totalPrice'),
              ],
            );
          })),
      InkWell(onTap: () {}, child: _placeOrder()),
    ],
  );
}

Text _productAndUnitsCount({required String unitsCount, required productCount}) {
  return Text(
    'There are currently $unitsCount units\nfrom $productCount different products in Cart',
    style: Themes.bodyMedium,
    textAlign: TextAlign.center,
  );
}

Widget _placeOrder() {
  return Container(
    height: 70.h,
    decoration: BoxDecoration(
      color: AppColors.backgroundColor1,
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(70.h),
      ),
    ),
    child: Text(
      'Place Order',
      style: Themes.headlineLarge.copyWith(color: AppColors.onBackgroundColor1),
    ).cr,
  );
}

Row _totalCartDetails(String title, String value) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: Themes.headlineMedium,
      ),
      Text(
        "$value EGP",
        style: Themes.headlineMedium.copyWith(color: AppColors.red),
      ),
    ],
  );
}
