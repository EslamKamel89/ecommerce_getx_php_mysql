import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:ecommerce_getx_php_mysql/core/localization/translate_database.dart';
import 'package:ecommerce_getx_php_mysql/presentation/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffersAds extends StatelessWidget {
  const OffersAds({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.w),
      child: const Stack(
        children: [
          MainContainer(
            child: AdsData(title: 'Summer Surpise', body: 'Cashback 20%'),
          ),
          DecoratedContainer()
        ],
      ),
    );
  }
}

class MainContainer extends StatelessWidget {
  const MainContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 150.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.w),
          color: AppColors.backgroundColor1.withOpacity(0.6),
        ),
        alignment: Alignment.center,
        child: child);
  }
}

class AdsData extends StatelessWidget {
  const AdsData({
    super.key,
    required this.title,
    required this.body,
  });
  final String title;
  final String body;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: Themes.headlineLarge.copyWith(
          color: AppColors.onBackgroundColor1,
        ),
      ),
      subtitle: Text(
        body,
        style: Themes.headlineLarge.copyWith(color: AppColors.onBackgroundColor1, fontSize: 30.sp),
      ),
    );
  }
}

class DecoratedContainer extends StatelessWidget {
  const DecoratedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: TrService.isEn ? -30.w : null,
      left: TrService.isEn ? null : -30.w,
      top: -30.w,
      child: Container(
        width: 150.w,
        height: 150.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.w),
          color: AppColors.backgroundColor1,
        ),
      ),
    );
  }
}
