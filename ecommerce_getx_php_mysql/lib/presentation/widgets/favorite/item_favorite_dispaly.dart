import 'package:ecommerce_getx_php_mysql/buisness_logic/favorite_screen/favorite_screen_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:ecommerce_getx_php_mysql/constants/links.dart';
import 'package:ecommerce_getx_php_mysql/core/class/status_request.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/core/localization/translate_database.dart';
import 'package:ecommerce_getx_php_mysql/data/models/home/items_model.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/alert_dialogue.dart';
import 'package:ecommerce_getx_php_mysql/presentation/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ItemFavoriteDisplay extends StatelessWidget {
  const ItemFavoriteDisplay({
    super.key,
    required this.itemModel,
  });

  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    FavoriteScreenController controller = Get.find();
    return InkWell(
      onTap: () {
        controller.goToItemDetails(itemModel);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          _itemImage(),
          _backgroundColor(),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: _decoratedContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5.h),
                  _itemName(),
                  _itemPrice(),
                ],
              ),
            ),
          ),
          Positioned(
            right: TrService.isEn ? 5.w : null,
            left: TrService.isEn ? null : 5.w,
            bottom: 5.w,
            child: RemoveFromFavoriteButton(itemModel: itemModel),
          ),
          Positioned(
            left: TrService.isEn ? 5.w : null,
            right: TrService.isEn ? null : 5.w,
            top: 0,
            child: itemModel.itemsDiscount != '0' ? _discountText() : Container(),
          ),
        ],
      ),
    );
  }

  Widget _discountText() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.red,
        borderRadius: BorderRadius.circular(5.w),
      ),
      width: 80.w,
      child: Row(
        children: [
          Icon(Icons.hotel_class_rounded, size: 20.w, color: AppColors.backgroundColor2),
          Text(
            ' ${itemModel.itemsDiscount}% Off',
            style: Themes.displayMedium.copyWith(
              color: AppColors.backgroundColor2,
            ),
          ),
        ],
      ),
    );
  }

  Container _itemPrice() {
    String currency = TrService.isEn ? 'EGP' : 'جنية';
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 15.h, right: 5.w),
      child: Text(
        '${itemModel.itemsPrice} $currency',
        style: Themes.bodyMedium.copyWith(
          color: AppColors.red,
          // color: AppColors.onBackgroundColor2,
          fontFamily: null,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Text _itemName() {
    return Text(
      TrService.trDb(en: itemModel.itemsName!, ar: itemModel.itemsNameAr!),
      style: Themes.bodyMedium.copyWith(color: AppColors.onBackgroundColor2),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Container _decoratedContainer({required Widget child}) {
    return Container(
      margin: EdgeInsets.all(2.w),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor1.withOpacity(0.2),
        border: const Border(top: BorderSide.none),
        borderRadius: BorderRadius.circular(30.w),
      ),
      child: child,
    );
  }

  Container _backgroundColor() {
    return Container(
      margin: EdgeInsets.all(2.w),
      decoration: BoxDecoration(
        color: AppColors.red.withOpacity(0.07),
        // color: AppColors.backgroundColor1.withOpacity(0.1),
        borderRadius: BorderRadius.circular(30.w),
      ),
    );
  }

  Container _itemImage() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      child: Hero(
        tag: itemModel.itemsId!,
        child: Image.network(
          '${AppLinks.itemsImagePath}${itemModel.itemsImage}',
          height: 140.h,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class RemoveFromFavoriteButton extends StatelessWidget {
  const RemoveFromFavoriteButton({super.key, required this.itemModel});
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    Icon icon = Icon(Icons.heart_broken_rounded, size: 30.w, color: AppColors.red);
    FavoriteScreenController controller = Get.find();
    return IconButton(
      icon: icon,
      onPressed: () async {
        'RemoveFromFavoriteButton'.prt;
        await customAlertDialogue(
          context: context,
          titleIcon: icon,
          title: 'Love Has No End',
          msg: 'Are you sure you want to remove this product from favorites',
          popText: 'No',
          actionOne: TextButton(
            onPressed: () async {
              await controller.removeFromFavorite(itemModel.itemsId!);
              Get.back();
            },
            child: const Text('Yes'),
          ),
        );
        _listener(context, controller);
      },
    );
  }

  _listener(BuildContext context, FavoriteScreenController controller) {
    String message = '';
    if (controller.removeFavoriteStatusRequest == StatusRequest.success) {
      message = 'Removing From Favorite Completed Successfuly'.pr;
    } else {
      message = 'Failed To Remove Item From Favorites'.pr;
    }
    Get.snackbar('Remove From Favorite', message);
  }
}
