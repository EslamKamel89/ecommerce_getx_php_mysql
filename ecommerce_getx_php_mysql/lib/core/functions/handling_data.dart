import 'package:ecommerce_getx_php_mysql/core/class/status_request.dart';

handlingStatusRequest(dynamic response) {
  if (response is StatusRequest) {
    return response;
  } else if (response['data'] == null || response['status'] == 'failure') {
    return StatusRequest.noData;
  } else {
    return StatusRequest.success;
  }
}
