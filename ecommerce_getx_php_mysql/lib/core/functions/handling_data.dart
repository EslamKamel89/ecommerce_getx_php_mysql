import 'package:ecommerce_getx_php_mysql/core/class/status_request.dart';

handlingData(dynamic response) {
  if (response is StatusRequest) {
    return response;
  } else {
    return StatusRequest.success;
  }
}
