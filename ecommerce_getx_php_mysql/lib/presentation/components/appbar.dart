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
}
