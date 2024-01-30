import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';
import 'package:ecommerce_getx_php_mysql/core/class/status_request.dart';
import 'package:ecommerce_getx_php_mysql/core/functions/handling_data.dart';
import 'package:ecommerce_getx_php_mysql/data/data_provider/remote/test_data.dart';
import 'package:get/get.dart';

class TestController extends GetxController {
  static final Crud _crud = Get.find();
  TestData testData = TestData(_crud);
  List data = [];
  late StatusRequest statusRequest;
  Future getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getData();
    statusRequest = handlingStatusRequest(response);
    if (statusRequest == StatusRequest.success) {
      data.addAll(response['data']);
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}

class TestScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TestController(), fenix: true);
  }
}
