import 'package:ecommerce_getx_php_mysql/buisness_logic/items_details/items_details_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/presentation/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Widget addToCartButton() {
  ItemDetailsController controller = Get.find();
  return InkWell(
    onTap: () {
      controller.addToCart();
    },
    child: Container(
      height: 70.h,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor1,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(70.h),
        ),
      ),
      child: Text(
        'Add To Cart',
        style: Themes.headlineLarge.copyWith(color: AppColors.onBackgroundColor1),
      ).cr,
    ),
  );
}
