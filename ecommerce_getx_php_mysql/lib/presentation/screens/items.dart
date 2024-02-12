import 'package:ecommerce_getx_php_mysql/buisness_logic/items/items_controller.dart';
import 'package:ecommerce_getx_php_mysql/data/models/home/categories_model.dart';
import 'package:ecommerce_getx_php_mysql/presentation/themes/themes.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/items/choose_category_row.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/items/item_display_builder.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/items/items_search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ItemsScreen extends StatelessWidget {
  ItemsScreen({super.key});
  final ItemController itemController = Get.find();
  @override
  Widget build(BuildContext context) {
    Themes.init(context);
    CategoriesModel category = itemController.currentCat;
    return Scaffold(
      // appBar: CustomAppBar.defaultAppBar(context, category.categoriesName!.toUpperCase()),
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
            child: ListView(
              children: [
                ItemSearchField(bottomMargin: 10.h),
                Text('Choose Another Category', style: Themes.bodyMedium),
                const ChooseCategoryRow(),
                const ItemDisplayBuilder(),
              ],
            )),
      ),
    );
  }
}
