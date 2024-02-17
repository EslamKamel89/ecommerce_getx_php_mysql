import 'package:ecommerce_getx_php_mysql/buisness_logic/setting/setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DisableNoificationsButton extends StatelessWidget {
  const DisableNoificationsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SettingsController controller = Get.find();
    return ListTile(
      onTap: () {},
      title: Text(
        'Disable Notifications',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      trailing: Icon(Icons.notifications, size: 30.w),
    );
  }
}
