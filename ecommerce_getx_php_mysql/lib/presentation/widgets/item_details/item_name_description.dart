import 'package:ecommerce_getx_php_mysql/buisness_logic/items_details/items_details_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:ecommerce_getx_php_mysql/presentation/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ItemNameAndDescription extends StatelessWidget {
  ItemNameAndDescription({super.key});
  final ItemDetailsController cont = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(cont.itemModel.itemsName!, style: Themes.headlineLarge),
        SizedBox(width: double.infinity, height: 5.w),
        Text(
          cont.itemModel.itemsDesc!,
          style: Themes.headlineMedium.copyWith(
            color: AppColors.onBackgroundColor2.withOpacity(0.8),
          ),
        )
      ],
    );
  }
}
