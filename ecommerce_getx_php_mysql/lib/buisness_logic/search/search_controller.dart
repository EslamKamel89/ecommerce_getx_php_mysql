import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:ecommerce_getx_php_mysql/core/class/status_request.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/core/functions/handling_status_request.dart';
import 'package:ecommerce_getx_php_mysql/data/data_provider/remote/search_data.dart';
import 'package:ecommerce_getx_php_mysql/data/models/home/items_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SearchControllerAbstract extends GetxController {
  goToSearch();
  back(String text);
  getSearchItems();
  goToItemsDetails({required ItemModel itemModel});
}

class MySearchController extends SearchControllerAbstract {
  late TextEditingController searchController;
  StatusRequest searchStatusRequest = StatusRequest.initial;
  List<ItemModel> items = [];
  SearchData searchData = SearchData(Get.find());
  @override
  void onInit() {
    searchController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }

  @override
  goToSearch() async {
    Get.toNamed(AppRoutes.searchItems);
    await getSearchItems();
  }

  @override
  back(String text) {
    if (text == '') {
      Get.back();
    }
  }

  @override
  getSearchItems() async {
    final t = 'getSearchItems - MySearchController'.prt;
    searchStatusRequest = StatusRequest.initial;
    items = [];
    update();
    var response = await searchData.searchPost(searchController.text);
    searchStatusRequest = handlingStatusRequest(response);
    if (searchStatusRequest == StatusRequest.success) {
      items = (response['data'] as List).map((e) => ItemModel.fromMap(e)).toList().prm(t);
    } else {
      "response != StatusRequest.success".prm(t);
      Future.delayed(const Duration(seconds: 2)).then((value) {
        searchStatusRequest = StatusRequest.initial;
        update();
      });
    }
    update();
  }

  @override
  goToItemsDetails({required ItemModel itemModel}) {
    Get.toNamed(
      AppRoutes.itemsDetails,
      arguments: {'itemModel': itemModel},
    );
  }
}

class SearchBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(MySearchController());
  }
}
