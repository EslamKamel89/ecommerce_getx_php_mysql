import 'package:ecommerce_getx_php_mysql/buisness_logic/items/items_controller.dart';
import 'package:ecommerce_getx_php_mysql/core/class/handling_data_view.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/items/item_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ItemDisplayBuilder extends StatelessWidget {
  const ItemDisplayBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemController>(builder: (itemController) {
      return HandlingDataView(
        statusRequest: itemController.statusRequest,
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: itemController.itemsList.length,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 220.h,
          ),
          itemBuilder: (context, index) {
            return ItemDisplay(itemModel: itemController.itemsList[index]);
          },
        ),
      );
    });
  }
}
