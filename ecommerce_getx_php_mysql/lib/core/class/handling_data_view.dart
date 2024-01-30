import 'package:ecommerce_getx_php_mysql/core/class/status_request.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:flutter/material.dart';

class HandlingDataView extends StatelessWidget {
  const HandlingDataView({
    super.key,
    required this.statusRequest,
    this.loadingWidget,
    this.serverFailureWidget,
    this.offlineFailureWidget,
    this.errorWiget,
    this.noDataWiget,
    required this.successWidget,
  });
  final StatusRequest statusRequest;
  final Widget? loadingWidget;
  final Widget? serverFailureWidget;
  final Widget? offlineFailureWidget;
  final Widget? errorWiget;
  final Widget? noDataWiget;
  final Widget successWidget;

  @override
  Widget build(BuildContext context) {
    if (statusRequest == StatusRequest.loading) {
      return loadingWidget ?? const Text('Loading').cr;
    } else if (statusRequest == StatusRequest.offlineFailure) {
      return offlineFailureWidget ?? const Text('Offline Failure').cr;
    } else if (statusRequest == StatusRequest.serverFailure) {
      return serverFailureWidget ?? const Text('Server Failure').cr;
    } else if (statusRequest == StatusRequest.error) {
      return errorWiget ?? const Text('Error occured').cr;
    } else if (statusRequest == StatusRequest.noData) {
      return noDataWiget ?? const Text('Error in fetching data').cr;
    }
    return successWidget;
  }
}
