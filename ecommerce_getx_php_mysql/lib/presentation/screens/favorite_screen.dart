import 'package:ecommerce_getx_php_mysql/buisness_logic/favorite_screen/favorite_screen_controller.dart';
import 'package:ecommerce_getx_php_mysql/core/class/handling_data_view.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/appbar.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/text_search_field.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/favorite/item_favorite_dispaly.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.favoriteAppBar(context),
      body: ListView(
        children: [
          const SearchTextField(),
          GetBuilder<FavoriteScreenController>(
            builder: (controller) {
              return HandlingDataView(
                statusRequest: controller.statusRequest,
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: controller.data.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 220.h,
                  ),
                  itemBuilder: (context, index) {
                    return ItemFavoriteDisplay(itemModel: controller.data[index]);
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.w),
      child: CustomSearchField(
        title: 'Search Products',
        width: 300.w,
        searchIconButton: () {},
      ),
    );
  }
}
