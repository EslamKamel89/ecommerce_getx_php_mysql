import 'package:ecommerce_getx_php_mysql/data/models/mainpage/mainpage_bottom_bar_navigation.dart';
import 'package:ecommerce_getx_php_mysql/presentation/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavigationIcon extends StatefulWidget {
  const BottomNavigationIcon({
    super.key,
    required this.mainpageModel,
    required this.callback,
    required this.currentIndex,
    required this.color,
    this.leftMargin,
    this.rightMargin,
  });
  final MainpageModel mainpageModel;
  final void Function(int i) callback;
  final double? leftMargin;
  final double? rightMargin;
  final int currentIndex;
  final Color color;

  @override
  State<BottomNavigationIcon> createState() => _BottomNavigationIconState();
}

class _BottomNavigationIconState extends State<BottomNavigationIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.callback(widget.mainpageModel.index);
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 10.h),
        margin: EdgeInsets.only(left: widget.leftMargin ?? 0, right: widget.rightMargin ?? 0),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            _bottomBarIcon(),
            Positioned(
              bottom: -15.h,
              child: _bottomBarText(),
            ),
          ],
        ),
      ),
    );
  }

  Text _bottomBarText() {
    return Text(
      widget.mainpageModel.title,
      style: Themes.bodyMedium.copyWith(color: widget.color),
    );
  }

  Icon _bottomBarIcon() {
    return Icon(
      widget.mainpageModel.icon,
      size: 30.w,
      color: widget.color,
    );
  }
}
