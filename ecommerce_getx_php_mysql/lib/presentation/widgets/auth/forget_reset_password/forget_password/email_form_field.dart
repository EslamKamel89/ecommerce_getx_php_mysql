import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/forget_reset_password/forgetpassword_controller.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ForgetPasswordController forgetPassordController = Get.find();
    return CustomFormField3(
      type: EntryType.email,
      controller: forgetPassordController.emailController,
      icon: Padding(padding: EdgeInsets.only(right: 5.w), child: Icon(Icons.email_outlined, size: 20.w)),
    );
  }
}
