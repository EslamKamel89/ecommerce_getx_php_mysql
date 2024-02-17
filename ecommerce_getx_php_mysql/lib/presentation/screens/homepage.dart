import 'package:ecommerce_getx_php_mysql/buisness_logic/homepage/homepage_controller.dart';
// ignore: unused_import
import 'package:ecommerce_getx_php_mysql/buisness_logic/services/services_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:ecommerce_getx_php_mysql/presentation/themes/themes.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/mainpage/homepage/categories_row.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/mainpage/homepage/favorite_button.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/mainpage/homepage/notification_button.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/mainpage/homepage/offers_ads.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/mainpage/homepage/recommended_products.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/mainpage/homepage/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    final HomepageController homepageController = Get.put(HomepageController());
    // InitServices service = Get.find();
    // service.sharedPreferences.clear();
    // String? userJson = service.sharedPreferences.getString('user');
    // User currentUser;
    // 'Testing Saving Data'.prt;
    // if (userJson != null) {
    //   currentUser = User.fromJson(userJson);
    //   currentUser.toString().pr;
    // } else {
    //   'Error'.pr;
    // }
    homepageController.fetchData();
    Themes.init(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomepageSearchField(),
                const NotificationsButton(),
                const FavoriteButton(),
              ],
            ),
            const OffersAds(),
            _homepageTitle('Categories'),
            CategoriesRow(topMargin: 5.h, bottomMargin: 10.h),
            _homepageTitle('Products For You'),
            RecommededProducts(topMargin: 5.h, bottomMargin: 10.h),
          ],
        ),
      ),
    );
  }

  Text _homepageTitle(String title) => Text(title, style: Themes.headlineMedium.copyWith(color: AppColors.backgroundColor1));
}
