import 'package:ecommerce_getx_php_mysql/buisness_logic/setting/setting_controller.dart';
import 'package:ecommerce_getx_php_mysql/core/class/responsive_info.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/settings/aboutus_button.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/settings/change_address_button.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/settings/contactus_button.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/settings/disable_notifications.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/settings/logout_button.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/settings/person_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsController controller = Get.put(SettingsController());
    Sze.init(context);
    return Scaffold(
      body: ListView(
        children: [
          const PersonIcon(),
          SizedBox(height: 30.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: const Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DisableNoificationsButton(),
                  Divider(),
                  ChangeAdressButton(),
                  Divider(),
                  AboutUsButton(),
                  Divider(),
                  ContactUsButton(),
                  Divider(),
                  LogoutButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
