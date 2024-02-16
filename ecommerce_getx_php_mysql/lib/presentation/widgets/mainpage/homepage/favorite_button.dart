import 'package:ecommerce_getx_php_mysql/buisness_logic/homepage/homepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    HomepageController homepageController = Get.find();
    return InkWell(
      onTap: () {
        homepageController.goToFavorite();
      },
      child: Icon(Icons.favorite, size: 35.w, color: Colors.red),
    );
  }
}
