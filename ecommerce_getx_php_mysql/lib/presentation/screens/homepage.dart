import 'package:ecommerce_getx_php_mysql/buisness_logic/homepage/homepage_controller.dart';
import 'package:ecommerce_getx_php_mysql/buisness_logic/services/services_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:ecommerce_getx_php_mysql/core/class/responsive_info.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/data/models/user/user_model.dart';
import 'package:ecommerce_getx_php_mysql/presentation/themes/themes.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/homepage/text_search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  final HomepageController homepageController = Get.find();
  @override
  Widget build(BuildContext context) {
    InitServices service = Get.find();
    // service.sharedPreferences.clear();
    String? userJson = service.sharedPreferences.getString('user');
    User currentUser;
    'Testing Saving Data'.prt;
    if (userJson != null) {
      currentUser = User.fromJson(userJson);
      currentUser.toString().pr;
    } else {
      'Error'.pr;
    }
    Themes.init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(height: Sze.w * 5),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CustomSearchField(),
                  SizedBox(width: 10.w),
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.notifications_active_outlined, size: 25.w),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.w),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 150.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.w),
                        color: AppColors.backgroundColor1.withOpacity(0.6),
                      ),
                      alignment: Alignment.center,
                      child: ListTile(
                        title: Text(
                          'Summer Surpise',
                          style: Themes.headlineLarge.copyWith(
                            color: AppColors.onBackgroundColor1,
                          ),
                        ),
                        subtitle: Text(
                          'Cashback 20%',
                          style: Themes.headlineLarge.copyWith(color: AppColors.onBackgroundColor1, fontSize: 30.sp),
                        ),
                      ),
                    ),
                    Positioned(
                      right: -30.w,
                      top: -30.w,
                      child: Container(
                        width: 150.w,
                        height: 150.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.w),
                          color: AppColors.backgroundColor1,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
