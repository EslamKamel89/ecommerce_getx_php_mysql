// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:ecommerce_getx_php_mysql/core/class/responsive_info.dart';
import 'package:ecommerce_getx_php_mysql/data/data_provider/static/mainpage_bottom_navigation_data.dart';
import 'package:ecommerce_getx_php_mysql/presentation/themes/themes.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/mainpage/mainpage_widgets/bottom_bar_icons_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  updateMainpageUi(int i) {
    setState(() {
      index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    Themes.init(context);
    Sze.init(context);
    return Scaffold(
      floatingActionButton: _floatingActionButton(updateMainpageUi, index),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      bottomNavigationBar: BottomAppBar(
        shape: Sze.mobile ? const CircularNotchedRectangle() : null,
        height: 40.h,
        color: AppColors.backgroundColor1.withOpacity(0.1),
        child: bottomBarIconsRow(updateMainpageUi, index),
      ),
      body: MainpageData.list[index].child,
    );
  }

  FloatingActionButton _floatingActionButton(Function(int) callback, int currentIndex) {
    int cartPageIndex = MainpageData.list.last.index;
    return FloatingActionButton(
      onPressed: () {
        callback(cartPageIndex);
      },
      backgroundColor: cartPageIndex == currentIndex ? AppColors.backgroundColor2 : AppColors.backgroundColor1.withOpacity(0.2),
      shape: Sze.mobile ? const CircleBorder() : null,
      child: Container(
        padding: EdgeInsets.all(5.w),
        child: Icon(
          Icons.shopping_cart,
          color: cartPageIndex == currentIndex ? AppColors.backgroundColor1 : AppColors.onBackgroundColor2.withOpacity(0.7),
          size: 30.w,
        ),
      ),
    );
  }
}
