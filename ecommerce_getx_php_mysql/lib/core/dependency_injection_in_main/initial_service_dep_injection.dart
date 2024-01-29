import 'package:ecommerce_getx_php_mysql/buisness_logic/locale/change_local_controller.dart';
import 'package:ecommerce_getx_php_mysql/buisness_logic/services/services_controller.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';
import 'package:get/get.dart';

initialServices() async {
  await Get.putAsync(() => InitServices().init());
  Get.put(LocaleController());
  Get.put(Crud());
}
