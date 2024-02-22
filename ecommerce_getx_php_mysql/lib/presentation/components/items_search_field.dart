import 'package:ecommerce_getx_php_mysql/buisness_logic/search/search_controller.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/text_search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ItemsSearchField extends StatelessWidget {
  const ItemsSearchField({super.key, this.leftMargin, this.rightMargin});
  final double? leftMargin;
  final double? rightMargin;
  @override
  Widget build(BuildContext context) {
    MySearchController controller = Get.find();
    return Container(
      margin: EdgeInsets.only(left: leftMargin ?? 0, right: rightMargin ?? 0),
      child: CustomSearchField(
        title: 'Search Products',
        controller: controller.searchController,
        onChanged: (text) {
          // controller.back(text);
        },
        width: 220.w,
        searchIconButton: () async {
          controller.goToSearch();
          await controller.getSearchItems();
        },
      ),
    );
  }
}
