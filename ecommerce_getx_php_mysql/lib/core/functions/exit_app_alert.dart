import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

exitAppAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text('WARNING'.tr),
        content: Text('ALERT_CONTENT'.tr),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('CANCEL'.tr),
          ),
          TextButton(
            onPressed: () {
              SystemNavigator.pop();
            },
            child: Text('CONFIRM'.tr),
          )
        ],
      );
    },
  );
}
