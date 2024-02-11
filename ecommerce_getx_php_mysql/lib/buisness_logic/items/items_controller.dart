import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:ecommerce_getx_php_mysql/data/models/home/categories_model.dart';
import 'package:get/get.dart';

abstract class ItemControllerAbstract extends GetxController {
  void init();
  goToItems(List allCategories, CategoriesModel category);
  changeCategory(val);
}

class ItemController extends ItemControllerAbstract {
  List<CategoriesModel> allCategories = [];

  late CategoriesModel currentCat;

  @override
  init() {
    allCategories = Get.arguments['allCategories'];
    currentCat = Get.arguments['selectedCategory'];
  }

  @override
  void onInit() {
    init();
    super.onInit();
  }

  @override
  goToItems(List allCategories, CategoriesModel category) {
    Get.offNamed(
      AppRoutes.items,
      arguments: {'selectedCategory': category, 'allCategories': allCategories},
      preventDuplicates: false,
    );
  }

  @override
  changeCategory(val) {
    currentCat = val;
    update();
  }
}

class ItemBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ItemController(), fenix: true);
  }
}
