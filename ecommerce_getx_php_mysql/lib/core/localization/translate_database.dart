import 'package:ecommerce_getx_php_mysql/buisness_logic/services/services_controller.dart';
import 'package:get/get.dart';

class TrService {
  static trDb({required dynamic en, required dynamic ar}) {
    InitServices services = Get.find();
    String langCode = services.sharedPreferences.getString('langCode') ?? 'en';
    if (langCode == 'ar') {
      return ar;
    } else {
      return en;
    }
  }

  static bool get isEn {
    InitServices services = Get.find();
    String langCode = services.sharedPreferences.getString('langCode') ?? 'en';
    if (langCode == 'ar') {
      return false;
    }
    return true;
  }
}
