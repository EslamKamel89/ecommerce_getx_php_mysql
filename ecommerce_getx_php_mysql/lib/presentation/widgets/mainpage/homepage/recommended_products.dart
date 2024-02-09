import 'package:ecommerce_getx_php_mysql/buisness_logic/homepage/homepage_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:ecommerce_getx_php_mysql/constants/links.dart';
import 'package:ecommerce_getx_php_mysql/core/class/handling_data_view.dart';
import 'package:ecommerce_getx_php_mysql/data/models/home/items_model.dart';
import 'package:ecommerce_getx_php_mysql/presentation/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class RecommededProducts extends StatelessWidget {
  const RecommededProducts({super.key, this.topMargin, this.bottomMargin});
  final double? topMargin;
  final double? bottomMargin;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomepageController>(
      builder: (controller) {
        return HandlingDataView(
          height: 300.h,
          statusRequest: controller.statusRequest,
          child: Container(
            height: 130.h,
            margin: EdgeInsets.only(top: topMargin ?? 0, bottom: bottomMargin ?? 0),
            // color: Colors.grey,
            child: ListView.builder(
              itemCount: controller.itemsList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                ItemsModel item = controller.itemsList[index];
                return InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 3.w),
                    child: Stack(
                      children: [
                        ProductImage(item: item),
                        const ColoredContainer(),
                        Positioned(
                          bottom: 0,
                          child: DecoratedContainer(
                            child: Text(
                              '${item.itemsName!}\n${item.itemsPrice} EGP\nDiscount ${item.itemsDiscount} %',
                              style: Themes.bodySmall.copyWith(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class DecoratedContainer extends StatelessWidget {
  const DecoratedContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w),
      width: 100.h,
      height: 70.h,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor1.withOpacity(0.9),
        borderRadius: BorderRadius.circular(10.w),
      ),
      alignment: Alignment.center,
      child: child,
    );
  }
}

class ColoredContainer extends StatelessWidget {
  const ColoredContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.h,
      height: 110.h,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor1.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10.w),
      ),
    );
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.item,
  });

  final ItemsModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.h,
      height: 110.h,
      padding: EdgeInsets.only(left: 8.w, right: 8.w, bottom: 15.w),
      child: Image.network("${AppLinks.itemsImagePath}${item.itemsImage}", fit: BoxFit.fill),
    );
  }
}
