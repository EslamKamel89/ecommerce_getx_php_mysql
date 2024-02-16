import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
    this.title,
    this.controller,
    this.searchIconButton,
    this.width,
  });
  final String? title;
  final TextEditingController? controller;
  final void Function()? searchIconButton;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5.w),
      height: 50.h,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor2,
        border: Border.all(color: AppColors.onBackgroundColor2),
        borderRadius: BorderRadius.circular(20.w),
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(width: 10.w),
          InkWell(onTap: searchIconButton, child: Icon(Icons.search, size: 25.w)),
          SizedBox(
            width: width ?? 200.w,
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                hintText: title ?? 'Search',
                hintStyle: TextStyle(fontSize: 20.sp),
                border: const OutlineInputBorder(borderSide: BorderSide.none),
                enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
                focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
