import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:ecommerce_getx_php_mysql/data/data_provider/static/mainpage_bottom_navigation_data.dart';
import 'package:ecommerce_getx_php_mysql/data/models/mainpage/mainpage_bottom_bar_navigation.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/mainpage/mainpage_widgets/bottom_bar_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Row bottomBarIconsRow(Function(int) callback, int currentIndex) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      ...List.generate(
        MainpageData.list.length - 1,
        (i) {
          MainpageModel mainpage = MainpageData.list[i];
          return InkWell(
            onTap: () {
              callback(mainpage.index);
            },
            child: BottomNavigationIcon(
              mainpageModel: mainpage,
              callback: callback,
              currentIndex: currentIndex,
              color: i == currentIndex
                  ? //
                  AppColors.backgroundColor1
                  : AppColors.onBackgroundColor2.withOpacity(0.7),
              leftMargin: mainpage.index == 2 ? 25.w : null,
              rightMargin: mainpage.index == 1 ? 25.w : null,
            ),
          );
        },
      ),
    ],
  );
}
