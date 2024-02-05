import 'package:get/get.dart';

abstract class HomepageControllerAbstract extends GetxController {}

class HomepageController extends HomepageControllerAbstract {}

class HomepageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomepageController());
  }
}
