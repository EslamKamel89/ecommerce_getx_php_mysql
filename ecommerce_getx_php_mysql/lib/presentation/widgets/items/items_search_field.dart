import 'package:ecommerce_getx_php_mysql/presentation/components/text_search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ItemSearchField extends StatelessWidget {
  const ItemSearchField({
    super.key,
    this.bottomMargin,
  });
  final double? bottomMargin;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, size: 30.w),
        ),
        SizedBox(width: 3.w),
        Container(
          margin: EdgeInsets.only(bottom: bottomMargin ?? 0),
          child: CustomSearchField(
            title: 'Search Products',
            // controller: homepageController.searchController,
            searchIconButton: () {},
          ),
        ),
      ],
    );
  }
}
