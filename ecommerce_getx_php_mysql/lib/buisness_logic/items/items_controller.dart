import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';
import 'package:ecommerce_getx_php_mysql/core/class/status_request.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/core/functions/handling_status_request.dart';
import 'package:ecommerce_getx_php_mysql/data/data_provider/remote/items_data.dart';
import 'package:ecommerce_getx_php_mysql/data/models/home/categories_model.dart';
import 'package:ecommerce_getx_php_mysql/data/models/home/items_model.dart';
import 'package:get/get.dart';

abstract class ItemControllerAbstract extends GetxController {
  void init();
  changeCategory(val);
  getItems();
  goToItemDetails(ItemModel itemModel);
}

class ItemController extends ItemControllerAbstract {
  List<CategoriesModel> allCategories = [];
  late CategoriesModel currentCat;
  List<ItemModel> itemsList = [];
  ItemModel itemsModel = ItemModel();
  StatusRequest statusRequest = StatusRequest.initial;
  ItemsData itemsData = ItemsData(Get.find<Crud>());

  @override
  Future getItems() async {
    statusRequest = StatusRequest.loading;
    itemsList = [];
    update();
    var response = await itemsData.postFetchItemByCategory(currentCat.categoriesId!);
    statusRequest = handlingStatusRequest(response);
    if (statusRequest == StatusRequest.success) {
      'getItems in ItemsController succeded'.prt;
      for (var item in response['data']) {
        itemsModel = ItemModel.fromMap(item);
        itemsList.add(itemsModel.pr);
      }
    } else {
      'getItems in ItemsController failed'.prt;
      Future.delayed(const Duration(seconds: 2)).then((value) {
        statusRequest = StatusRequest.initial;
        update();
      });
    }
    update();
  }

  @override
  init() {
    allCategories = Get.arguments['allCategories'];
    currentCat = Get.arguments['selectedCategory'];
    getItems();
  }

  @override
  void onInit() {
    init();
    super.onInit();
  }

  @override
  changeCategory(val) async {
    currentCat = val;
    await getItems();
    update();
  }

  @override
  goToItemDetails(ItemModel itemModel) {
    Get.toNamed(
      AppRoutes.itemsDetails,
      arguments: {'itemModel': itemModel},
    );
  }
}

class ItemBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ItemController(), fenix: true);
  }
}
