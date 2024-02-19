import 'package:ecommerce_getx_php_mysql/buisness_logic/cart/cart_controller.dart';
import 'package:ecommerce_getx_php_mysql/buisness_logic/cart_screen/cart_screen_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:ecommerce_getx_php_mysql/constants/links.dart';
import 'package:ecommerce_getx_php_mysql/data/models/cart/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ItemInCartView extends StatelessWidget {
  const ItemInCartView({
    super.key,
    required this.cartModel,
  });
  final CartModel cartModel;
  @override
  Widget build(BuildContext context) {
    CartController controller = Get.find();
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        height: 150.h,
        child: Row(
          children: [
            _networkImage(),
            _itemOrderDetails(context),
            _addOrRemoveQuantity(context),
          ],
        ),
      ),
    );
  }

  Widget _addOrRemoveQuantity(BuildContext context) {
    CartScreenController controller = Get.find();
    // final int quantity = controller.itemsInCartList[]
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 25.h),
          InkWell(
            onTap: () async {
              controller.addToCart(cartModel);
            },
            child: Icon(Icons.add, size: 30.w),
          ),
          SizedBox(height: 4.h),
          Text(
            int.parse(cartModel.countitems!).toString(),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          InkWell(
            onTap: () {
              controller.removeFromCart(cartModel);
            },
            child: Icon(Icons.remove, size: 30.w),
          ),
        ],
      ),
    );
  }

  Expanded _itemOrderDetails(BuildContext context) {
    TextStyle infoStyle = Theme.of(context)
        .textTheme
        .bodyMedium!
        .copyWith(color: AppColors.backgroundColor1, fontWeight: FontWeight.bold);
    return Expanded(
        flex: 4,
        child: Container(
          padding: EdgeInsets.only(left: 10.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cartModel.itemsName!,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: AppColors.red),
              ),
              RichText(
                text: TextSpan(
                  text: 'Price',
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: [
                    TextSpan(text: "           ${int.parse(cartModel.itemsPrice!)} EGP", style: infoStyle),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'Quantity ',
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: [
                    TextSpan(text: '     ${int.parse(cartModel.countitems!)} units', style: infoStyle),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'Total Price ',
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: [
                    TextSpan(
                        text: " ${int.parse(cartModel.itemsPrice!) * int.parse(cartModel.countitems!)} EGP",
                        style: infoStyle),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Expanded _networkImage() {
    return Expanded(
      flex: 2,
      child: Image.network('${AppLinks.itemsImagePath}${cartModel.itemsImage!}'),
    );
  }
}
