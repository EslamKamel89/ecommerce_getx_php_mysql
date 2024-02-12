import 'package:ecommerce_getx_php_mysql/data/models/home/items_model.dart';
import 'package:get/get.dart';

abstract class ItemDetailsControllerAbstract extends GetxController {
  init();
}

class ItemDetailsController extends ItemDetailsControllerAbstract {
  late ItemModel itemModel;
  @override
  init() {
    itemModel = Get.arguments['itemModel'];
  }

  @override
  void onInit() {
    init();
    super.onInit();
  }
}

class ItemDetailsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ItemDetailsController(), fenix: true);
  }
}
