import 'package:ecommerce_getx_php_mysql/buisness_logic/setting/setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SettingsController controller = Get.find();
    return ListTile(
      onTap: () {
        controller.logout();
      },
      title: Text(
        'Log out ',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      trailing: Icon(Icons.exit_to_app, size: 30.w),
    );
  }
}
