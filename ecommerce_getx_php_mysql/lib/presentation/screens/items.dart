import 'package:ecommerce_getx_php_mysql/buisness_logic/items/items_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:ecommerce_getx_php_mysql/constants/links.dart';
import 'package:ecommerce_getx_php_mysql/data/models/home/categories_model.dart';
import 'package:ecommerce_getx_php_mysql/presentation/themes/themes.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/items/choose_category_row.dart';
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
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 200.h,
                  ),
                  itemBuilder: (context, index) {
                    return const ItemDisplay(
                      title: 'Camera Canon 580s',
                      price: '12850',
                      imageLink: '${AppLinks.itemsImagePath}camera_canon.png',
                      discount: '10',
                    );
                  },
                ),
              ],
            )),
      ),
    );
  }
}

class ItemDisplay extends StatelessWidget {
  const ItemDisplay({
    super.key,
    required this.title,
    required this.price,
    required this.imageLink,
    this.discount,
  });
  final String title;
  final String price;
  final String imageLink;
  final String? discount;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10.w),
          child: Image.network(
            imageLink,
            height: 150.h,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          margin: EdgeInsets.all(2.w),
          decoration: BoxDecoration(
            color: AppColors.red.withOpacity(0.07),
            // color: AppColors.backgroundColor1.withOpacity(0.1),
            borderRadius: BorderRadius.circular(30.w),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            margin: EdgeInsets.all(2.w),
            // height: 80.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.backgroundColor1.withOpacity(0.2),
              border: const Border(top: BorderSide.none),
              borderRadius: BorderRadius.circular(30.w),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 5.h),
                Text(
                  title,
                  style: Themes.bodyMedium.copyWith(color: AppColors.onBackgroundColor2),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 15.h, right: 5.w),
                  child: Text(
                    '$price EGP',
                    style: Themes.bodyMedium.copyWith(
                      color: AppColors.red,
                      // color: AppColors.onBackgroundColor2,
                      fontFamily: null,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 5,
          top: 0,
          child: IconButton(
            icon: Icon(
              Icons.favorite_border_outlined,
              size: 30.w,
              color: AppColors.red,
            ),
            onPressed: () {},
          ),
        ),
        discount != null
            ? Row(
                children: [
                  Icon(Icons.hotel_class_rounded, size: 20.w, color: AppColors.red),
                  Text(
                    ' $discount% Off',
                    style: Themes.displayMedium.copyWith(
                      color: AppColors.red,
                    ),
                  ),
                ],
              )
            : Container(),
      ],
    );
  }
}
