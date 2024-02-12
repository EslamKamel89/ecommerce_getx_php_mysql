import 'package:ecommerce_getx_php_mysql/buisness_logic/homepage/homepage_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:ecommerce_getx_php_mysql/constants/links.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/core/localization/translate_database.dart';
import 'package:ecommerce_getx_php_mysql/data/models/home/categories_model.dart';
import 'package:ecommerce_getx_php_mysql/presentation/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoriesRow extends StatelessWidget {
  CategoriesRow({super.key, this.topMargin, this.bottomMargin});
  final HomepageController homepageController = Get.find();
  final double? topMargin;
  final double? bottomMargin;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomepageController>(builder: (controller) {
      Themes.init(context);
      return Container(
        height: 120.w,
        width: 120.w,
        margin: EdgeInsets.only(top: topMargin ?? 0, bottom: bottomMargin ?? 0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: homepageController.categoriesList.length.prt,
          itemBuilder: (context, index) {
            CategoriesModel category = controller.categoriesList[index];
            return InkWell(
              onTap: () {
                homepageController.goToItem(homepageController.categoriesList, category);
              },
              child: CategoryView(
                category: category,
              ),
            );
          },
        ),
      );
    });
  }
}

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final CategoriesModel category;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedContainer(
          child: Container(
            decoration: const BoxDecoration(),
            child: Image.network('${AppLinks.categoriyImagePath}${category.categoriesImage}'),
          ),
        ),
        Text(TrService.trDb(en: category.categoriesName!, ar: category.categoriesNameAr), style: Themes.bodyMedium),
      ],
    );
  }
}

class DecoratedContainer extends StatelessWidget {
  const DecoratedContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.w),
      margin: EdgeInsets.all(2.w),
      height: 80.w,
      width: 80.w,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor1.withOpacity(0.2),
        border: Border.all(color: AppColors.backgroundColor1, width: 2.w),
        borderRadius: BorderRadius.circular(100),
      ),
      child: child,
    );
  }
}
