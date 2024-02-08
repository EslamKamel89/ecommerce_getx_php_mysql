import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/login/login_controller.dart';
import 'package:ecommerce_getx_php_mysql/core/class/responsive_info.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EmailAndPasswordFormField extends StatelessWidget {
  const EmailAndPasswordFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.find();
    return Column(
      children: [
        CustomFormField3(
          controller: loginController.emailController,
          type: EntryType.email,
          icon: Padding(padding: EdgeInsets.only(right: 5.w), child: Icon(Icons.email_outlined, size: 20.w)),
        ),
        SizedBox(height: Sze.h * 2),
        CustomFormField3(
          type: EntryType.passOne,
          controller: loginController.passwordController,
          obsecureAllow: true,
        ),
      ],
    );
  }
}
