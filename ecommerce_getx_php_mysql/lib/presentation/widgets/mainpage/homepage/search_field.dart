import 'package:ecommerce_getx_php_mysql/buisness_logic/homepage/homepage_controller.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/text_search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomepageSearchField extends StatelessWidget {
  HomepageSearchField({super.key, this.leftMargin, this.rightMargin});
  final double? leftMargin;
  final double? rightMargin;
  final HomepageController homepageController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: leftMargin ?? 0, right: rightMargin ?? 0),
      child: CustomSearchField(
        title: 'Search Categories',
        controller: homepageController.searchController,
        width: 220.w,
        searchIconButton: () {},
      ),
    );
  }
}
