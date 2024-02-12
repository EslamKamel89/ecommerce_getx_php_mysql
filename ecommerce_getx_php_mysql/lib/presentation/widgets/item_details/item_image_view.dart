import 'package:ecommerce_getx_php_mysql/buisness_logic/items_details/items_details_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:ecommerce_getx_php_mysql/constants/links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ItemImageView extends StatelessWidget {
  const ItemImageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ItemDetailsController cont = Get.find();
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        _backgroundColor(),
        _itemImageView(cont),
        _backArrow(),
      ],
    );
  }

  Positioned _backArrow() {
    return Positioned(
      left: 10.w,
      top: 10.w,
      child: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(
          Icons.arrow_back,
          size: 40.w,
          color: AppColors.backgroundColor1,
        ),
      ),
    );
  }

  Positioned _itemImageView(ItemDetailsController cont) {
    return Positioned(
      bottom: -75.w,
      child: SizedBox(
        height: 200.h,
        child: Hero(
          tag: cont.itemModel.itemsId!,
          child: Image.network(
            AppLinks.itemsImagePath + cont.itemModel.itemsImage!,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  Container _backgroundColor() {
    return Container(
      height: 150.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor1.withOpacity(0.5),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(40.w),
        ),
      ),
    );
  }
}
