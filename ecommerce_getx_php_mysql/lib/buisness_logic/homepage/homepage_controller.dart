import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';
import 'package:ecommerce_getx_php_mysql/core/class/status_request.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/core/functions/handling_status_request.dart';
import 'package:ecommerce_getx_php_mysql/data/data_provider/remote/home_data.dart';
import 'package:ecommerce_getx_php_mysql/data/models/home/categories_model.dart';
import 'package:ecommerce_getx_php_mysql/data/models/home/items_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomepageControllerAbstract extends GetxController {
  fetchData();
}

class HomepageController extends HomepageControllerAbstract {
  static final Crud crud = Get.find();
  final HomepageData homepageData = HomepageData(crud);

  late List<CategoriesModel> categoriesList;
  late List<ItemsModel> itemsList;
  StatusRequest statusRequest = StatusRequest.initial;
  late CategoriesModel _categoriesModel;
  late ItemsModel _itemsModel;
  late List _tempList;

  TextEditingController searchController = TextEditingController();

  @override
  Future fetchData() async {
    itemsList = [];
    categoriesList = [];
    statusRequest = StatusRequest.loading;
    update();
    var response = await homepageData.postFetchHomeData();
    statusRequest = handlingStatusRequest(response);
    'fetchData method in HomepageController'.prt;
    if (statusRequest == StatusRequest.success) {
      _tempList = response['data']['items'];
      for (var item in _tempList) {
        _itemsModel = ItemsModel.fromMap(item).pr;
        itemsList.add(_itemsModel);
      }
      _tempList.clear();
      _tempList = response['data']['categories'];
      for (var category in _tempList) {
        _categoriesModel = CategoriesModel.fromMap(category).pr;
        categoriesList.add(_categoriesModel);
      }
    } else {
      Future.delayed(const Duration(seconds: 2)).then((value) {
        statusRequest = StatusRequest.initial;
        update();
      });
    }
    update();
  }
}

class HomepageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomepageController());
  }
}
