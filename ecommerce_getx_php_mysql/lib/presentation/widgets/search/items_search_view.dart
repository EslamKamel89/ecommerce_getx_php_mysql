import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:ecommerce_getx_php_mysql/constants/links.dart';
import 'package:ecommerce_getx_php_mysql/data/models/home/items_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemSearch extends StatelessWidget {
  const ItemSearch({
    super.key,
    required this.itemModel,
  });
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        height: 150.h,
        child: Row(
          children: [
            _networkImage(),
            _itemOrderDetails(context),
          ],
        ),
      ),
    );
  }

  Expanded _itemOrderDetails(BuildContext context) {
    TextStyle infoStyle = Theme.of(context)
        .textTheme
        .bodyMedium!
        .copyWith(color: AppColors.backgroundColor1, fontWeight: FontWeight.bold);
    return Expanded(
        flex: 2,
        child: Container(
          padding: EdgeInsets.only(left: 10.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemModel.itemsName!,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: AppColors.red),
              ),
              RichText(
                text: TextSpan(
                  text: 'Price',
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: [
                    TextSpan(text: "  ${int.parse(itemModel.itemsPrice!)} EGP", style: infoStyle),
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
      child: Image.network('${AppLinks.itemsImagePath}${itemModel.itemsImage!}'),
    );
  }
}
