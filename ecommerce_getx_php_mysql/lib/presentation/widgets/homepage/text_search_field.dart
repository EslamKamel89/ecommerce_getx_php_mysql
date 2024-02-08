import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
    this.controller,
  });
  final TextEditingController? controller;
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
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(width: 10.w),
          Icon(Icons.search, size: 25.w),
          SizedBox(
            width: 250.w,
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Search Products',
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
