import 'package:ecommerce_getx_php_mysql/buisness_logic/items/items_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:ecommerce_getx_php_mysql/core/localization/translate_database.dart';
import 'package:ecommerce_getx_php_mysql/data/models/home/categories_model.dart';
import 'package:ecommerce_getx_php_mysql/presentation/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChooseCategoryRow extends StatelessWidget {
  const ChooseCategoryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemController>(builder: (itemController) {
      List<CategoriesModel> allCategories = itemController.allCategories;
      return Container(
        margin: EdgeInsets.only(top: 5.h),
        height: 60.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: allCategories.length,
          itemBuilder: (context, index) {
            CategoriesModel currentCat = allCategories[index];
            return InkWell(
              onTap: () async {
                // itemController.goToItems(allCategories, currentCat);
                await itemController.changeCategory(currentCat);
              },
              child: Column(
                children: [
                  _decoratedContainer(
                    child: Text(
                      TrService.trDb(en: currentCat.categoriesName!, ar: currentCat.categoriesNameAr!),
                      style: Themes.bodyMedium.copyWith(
                        color: AppColors.onBackgroundColor1,
                      ),
                    ),
                  ),
                  _selectedCategoryLabel(index)
                ],
              ),
            );
          },
        ),
      );
    });
  }

  Container _decoratedContainer({required Widget child}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.w),
      padding: EdgeInsets.all(8.w),
      width: 80.w,
      // height: 30.h,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor1,
        borderRadius: BorderRadius.circular(20.w),
      ),
      alignment: Alignment.center, child: child,
    );
  }

  Container _selectedCategoryLabel(int index) {
    final ItemController itemController = Get.find();
    return Container(
      height: 5.h,
      width: 15.w,
      margin: EdgeInsets.only(top: 2.h),
      color: itemController.currentCat == itemController.allCategories[index] ? AppColors.backgroundColor1.withOpacity(0.3) : AppColors.backgroundColor2,
    );
  }
}
