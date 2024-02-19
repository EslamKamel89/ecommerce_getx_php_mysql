import 'package:ecommerce_getx_php_mysql/buisness_logic/items_details/items_details_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:ecommerce_getx_php_mysql/presentation/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ItemPrice extends StatelessWidget {
  ItemPrice({super.key});
  final ItemDetailsController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 10.h),
      Text('Choose Quantity', style: Themes.headlineLarge),
      SizedBox(height: 5.h),
      Row(
        children: [
          SizedBox(width: 15.w),
          _removeQuatityButton(),
          SizedBox(width: 10.w),
          GetBuilder<ItemDetailsController>(builder: (_) {
            return _actualQuantity();
          }),
          SizedBox(width: 10.w),
          _addQuantityButton(),
          const Spacer(),
          GetBuilder<ItemDetailsController>(builder: (_) {
            return _totalPrice();
          }),
          SizedBox(width: 15.w),
        ],
      ),
    ]);
  }

  Text _totalPrice() {
    final itemModel = controller.itemModel;
    final totalPrice = int.parse(itemModel.itemsPrice!) * controller.productQuantity;
    return Text(
      "$totalPrice EGP",
      style: Themes.headlineLarge.copyWith(
        color: AppColors.red.withOpacity(0.8),
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Text _actualQuantity() {
    return Text(
      controller.productQuantity.toString(),
      style: Themes.headlineLarge.copyWith(fontWeight: FontWeight.bold),
    );
  }

  InkWell _addQuantityButton() {
    return InkWell(
      onTap: () {
        controller.incrementQuantity();
      },
      child: Icon(
        Icons.add_circle_rounded,
        size: 30.w,
        color: AppColors.backgroundColor1.withOpacity(0.8),
      ),
    );
  }

  InkWell _removeQuatityButton() {
    return InkWell(
      onTap: () {
        controller.decrementQuantity();
      },
      child: Icon(
        Icons.remove_circle_rounded,
        size: 30.w,
        color: AppColors.backgroundColor1.withOpacity(0.8),
      ),
    );
  }
}
