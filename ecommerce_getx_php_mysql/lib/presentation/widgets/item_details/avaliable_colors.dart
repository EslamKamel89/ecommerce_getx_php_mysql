import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:ecommerce_getx_php_mysql/presentation/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvaliableColorsView extends StatelessWidget {
  const AvaliableColorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10.h),
          child: Text('Pick a Color', style: Themes.headlineLarge),
        ),
        SizedBox(
          height: 60.w,
          child: ListView(
            scrollDirection: Axis.horizontal,
            itemExtent: 60.w,
            children: _avaliableColors(
              colors: ['red', 'green', 'yellow', 'pink', 'brown', 'white', 'blue'],
              selectedColor: 'red',
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _avaliableColors({required List<String> colors, required String selectedColor}) {
    return List.generate(colors.length, (index) {
      Color avaliableColor = _getColorFromString(colors[index]);
      return Container(
        padding: EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.w),
          color: selectedColor == colors[index] ? AppColors.onBackgroundColor2.withOpacity(0.5) : null,
        ),
        child: Container(
          width: 30.w,
          height: 30.w,
          margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.w),
          decoration: BoxDecoration(
            color: avaliableColor,
            borderRadius: BorderRadius.circular(30.w),
            border: Border.all(
              color: AppColors.onBackgroundColor2.withOpacity(0.5),
              width: 4.w,
            ),
          ),
        ),
      );
    });
  }

  Color _getColorFromString(String colors) {
    switch (colors) {
      case 'red':
        return Colors.red;
      case 'green':
        return Colors.green;
      case 'blue':
        return Colors.blue;
      case 'yellow':
        return Colors.yellow;
      case 'black':
        return Colors.black;
      case 'pink':
        return Colors.pink;
      case 'brown':
        return Colors.brown;
      case 'white':
        return Colors.white;
      default:
        return Colors.transparent;
    }
  }
}
