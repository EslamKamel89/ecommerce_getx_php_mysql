import 'package:ecommerce_getx_php_mysql/buisness_logic/search/search_controller.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/appbar.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/search/items_search_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MySearchController>(builder: (controller) {
      return Scaffold(
        appBar: CustomAppBar.searchAppBar(),
        body: SafeArea(
          child: ListView.builder(
              itemCount: controller.items.length.prm('itemCount in searchScreen ListView.builder'),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => controller.goToItemsDetails(itemModel: controller.items[index]),
                  child: ItemSearch(itemModel: controller.items[index]),
                );
              }),
        ),
      );
    });
  }
}
