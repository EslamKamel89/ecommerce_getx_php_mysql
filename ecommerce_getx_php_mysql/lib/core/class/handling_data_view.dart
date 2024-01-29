import 'package:ecommerce_getx_php_mysql/core/class/status_request.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:flutter/material.dart';

class HandlingDataView extends StatelessWidget {
  const HandlingDataView({super.key, required this.statusRequest, required this.child});
  final StatusRequest statusRequest;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (statusRequest == StatusRequest.loading) {
      return const Text('Loading').cr;
    } else if (statusRequest == StatusRequest.offlineFailure) {
      return const Text('Offline Failure').cr;
    } else if (statusRequest == StatusRequest.serverFailure) {
      return const Text('Server Failure').cr;
    } else if (statusRequest == StatusRequest.error) {
      return const Text('Error occured').cr;
    } else if (statusRequest == StatusRequest.noData) {
      return const Text('Error in fetching data').cr;
    }
    return child;
  }
}
