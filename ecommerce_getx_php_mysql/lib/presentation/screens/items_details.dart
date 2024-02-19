import 'package:ecommerce_getx_php_mysql/buisness_logic/items_details/items_details_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:ecommerce_getx_php_mysql/presentation/themes/themes.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/item_details/add_to_cart_button.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/item_details/avaliable_colors.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/item_details/cart_details.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/item_details/item_image_view.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/item_details/item_name_description.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/item_details/item_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ItemDetailsScreen extends StatelessWidget {
  ItemDetailsScreen({super.key});
  final ItemDetailsController cont = Get.find();

  @override
  Widget build(BuildContext context) {
    Themes.init(context);
    return Scaffold(
      bottomNavigationBar: addToCartButton(),
      floatingActionButton: _floatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: ListView(
        children: [
          ItemImageView(),
          Container(
            margin: EdgeInsets.only(top: 70.h),
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ItemNameAndDescription(),
                const AvaliableColorsView(),
                ItemPrice(),
                GetBuilder<ItemDetailsController>(builder: (cont) {
                  return Visibility(visible: cont.itemCountInCart > 0, child: CartDetails());
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  FloatingActionButton _floatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        cont.goToCart();
      },
      child: Icon(
        Icons.shopping_cart,
        size: 30.w,
        color: AppColors.backgroundColor1,
      ),
    );
  }
}
