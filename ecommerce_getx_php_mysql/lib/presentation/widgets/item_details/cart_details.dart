import 'package:ecommerce_getx_php_mysql/buisness_logic/items_details/items_details_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/presentation/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CartDetails extends StatelessWidget {
  CartDetails({
    super.key,
  });
  final ItemDetailsController cont = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _cartDetails(),
        _numberOfItemsInCart(),
        _removeOneItemFromCart(),
      ],
    );
  }

  Container _cartDetails() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10.h),
      child: Text(
        'Cart Details',
        style: Themes.headlineLarge,
        textAlign: TextAlign.center,
      ),
    );
  }

  Row _removeOneItemFromCart() {
    return Row(
      children: [
        InkWell(
          onTap: () {
            cont.deleteOneItemFromCart();
          },
          child: Text(
            'Remove !! ',
            style: Themes.bodyLarge.copyWith(fontWeight: FontWeight.bold, color: AppColors.red),
          ),
        ),
        Text(
          'one from Cart',
          style: Themes.bodyMedium,
        ),
      ],
    );
  }

  Widget _numberOfItemsInCart() {
    return GetBuilder<ItemDetailsController>(builder: (cont) {
      return RichText(
        text: TextSpan(
          text: 'You Have ',
          style: Themes.bodyMedium,
          children: [
            TextSpan(
              text: cont.itemCountInCart.toString(),
              style: Themes.bodyLarge.copyWith(fontWeight: FontWeight.bold, color: AppColors.red),
              children: [
                TextSpan(text: ' ${'piece'.s(cont.itemCountInCart)} from this product in Cart', style: Themes.bodyMedium),
              ],
            ),
          ],
        ),
      );
    });
  }
}
