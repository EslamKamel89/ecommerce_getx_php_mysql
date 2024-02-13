import 'package:ecommerce_getx_php_mysql/buisness_logic/services/services_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/links.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/data/models/user/user_model.dart';
import 'package:get/get.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);
  InitServices services = Get.find();
  Future postFetchItemByCategory(String categoryId) async {
    User currentUser = User.fromJson(services.sharedPreferences.getString('user')!);
    String userId = currentUser.id;
    var response = await crud.postData(
      AppLinks.itemsLink,
      {
        'categoryId': categoryId,
        'userId': userId,
      },
    );
    var result = response.fold((l) => l, (r) => r);
    'postFetchItemByCategory method from ItemsData'.prt;
    result.toString().pr;
    return result;
  }
}
