// ignore_for_file: unused_import, dead_code

import 'package:ecommerce_getx_php_mysql/constants/lottie_assets.dart';
import 'package:ecommerce_getx_php_mysql/core/class/status_request.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
  const HandlingDataView({
    super.key,
    required this.statusRequest,
    this.loadingWidget,
    this.serverFailureWidget,
    this.offlineFailureWidget,
    this.errorWiget,
    this.noDataWiget,
    this.noDataTxt,
    required this.child,
  });
  final StatusRequest statusRequest;
  final Widget? loadingWidget;
  final Widget? serverFailureWidget;
  final Widget? offlineFailureWidget;
  final Widget? errorWiget;
  final Widget? noDataWiget;
  final Widget child;
  final String? noDataTxt;

  @override
  Widget build(BuildContext context) {
    if (statusRequest == StatusRequest.loading) {
      return loadingWidget ?? _displayInfo(AppLotties.loading, '');
    } else if (statusRequest == StatusRequest.offlineFailure) {
      return offlineFailureWidget ?? _displayInfo(AppLotties.offline, 'No Internet');
    } else if (statusRequest == StatusRequest.serverFailure) {
      return serverFailureWidget ?? _displayInfo(AppLotties.serverfailure, 'Server Failure');
    } else if (statusRequest == StatusRequest.error) {
      return errorWiget ?? _displayInfo(AppLotties.error, '');
    } else if (statusRequest == StatusRequest.noData) {
      return noDataWiget ?? _displayInfo(AppLotties.nodata, noDataTxt ?? '');
    }
    return child;
  }

  Widget _displayInfo(String lottiePath, String info) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LottieBuilder.asset(lottiePath),
        const SizedBox(width: double.infinity),
        Text(
          info,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
