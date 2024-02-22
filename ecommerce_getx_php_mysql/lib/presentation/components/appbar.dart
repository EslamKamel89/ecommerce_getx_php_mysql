import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/items_search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar {
  static AppBar defaultAppBar(BuildContext context, String title) {
    return AppBar(
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      elevation: 0.0,
      toolbarHeight: 70.h,
      iconTheme: IconThemeData(size: 20.w),

      // shape: ShapeBorder(),
      backgroundColor: Colors.white,
      centerTitle: true,
      foregroundColor: Colors.grey,
    );
  }

  static AppBar cartAppBar(BuildContext context, String title) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.shopping_cart_rounded, color: AppColors.backgroundColor1, size: 40.w),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ],
      ),
      elevation: 0.0,
      toolbarHeight: 70.h,
      iconTheme: IconThemeData(size: 20.w),

      // shape: ShapeBorder(),
      backgroundColor: Colors.white,
      centerTitle: true,
      foregroundColor: Colors.grey,
    );
  }

  static AppBar favoriteAppBar(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Text(
            'My ',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Icon(Icons.favorite, color: Colors.red, size: 30.w),
          Text(
            ' Products',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ],
      ),
      elevation: 0.0,
      toolbarHeight: 70.h,
      iconTheme: IconThemeData(size: 20.w),

      // shape: ShapeBorder(),
      backgroundColor: Colors.white,
      centerTitle: true,
      foregroundColor: Colors.grey,
    );
  }

  static AppBar searchAppBar() {
    return AppBar(
      title: Container(
          margin: EdgeInsets.only(
            bottom: 5.w,
            top: 5.w,
          ),
          child: const ItemsSearchField()),
      centerTitle: true,
      backgroundColor: AppColors.backgroundColor1.withOpacity(0.1),
      foregroundColor: Colors.black,
      toolbarHeight: 70.h,
    );
  }
}
