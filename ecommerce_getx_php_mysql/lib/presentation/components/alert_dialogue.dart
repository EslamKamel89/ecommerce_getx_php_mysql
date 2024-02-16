import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future customAlertDialogue({
  required BuildContext context,
  String? title,
  required String msg,
  String? popText,
  Icon? titleIcon,
  Widget? actionOne,
  Widget? actionTwo,
}) async {
  return await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            titleIcon ?? Icon(Icons.warning, size: 20.w),
            SizedBox(width: 10.w),
            Text(title ?? 'Info'),
          ],
        ),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp, color: Colors.black),
        content: Text(msg, textAlign: TextAlign.center),
        contentPadding: EdgeInsets.only(bottom: 12.h, top: 12.h),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(popText ?? 'Back'),
          ),
          actionOne ?? const SizedBox(width: 0, height: 0),
          actionTwo ?? const SizedBox(width: 0, height: 0),
        ],
        actionsAlignment: MainAxisAlignment.end,
      );
    },
  );
}
