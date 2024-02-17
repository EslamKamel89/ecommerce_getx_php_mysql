import 'package:ecommerce_getx_php_mysql/buisness_logic/setting/setting_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:ecommerce_getx_php_mysql/core/class/responsive_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PersonIcon extends StatelessWidget {
  const PersonIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SettingsController controller = Get.find();
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: (Sze.height / 4),
          color: AppColors.backgroundColor1.withOpacity(0.7),
        ),
        Positioned(
          bottom: -30.w,
          child: Container(
            padding: EdgeInsets.all(5.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(55.w),
              color: AppColors.backgroundColor2,
            ),
            child: CircleAvatar(
              radius: 50.w,
              backgroundImage: const AssetImage('assets/icons/img.png'),
            ),
          ),
        )
      ],
    );
  }
}
