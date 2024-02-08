import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/signup_folder/signup_controller.dart';
import 'package:ecommerce_getx_php_mysql/core/class/responsive_info.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UserDataFormField extends StatelessWidget {
  const UserDataFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SignupController signupController = Get.find<SignupController>();
    return Column(
      children: [
        CustomFormField3(
          type: EntryType.email,
          controller: signupController.emailController,
          icon: Padding(padding: EdgeInsets.only(right: 5.w), child: Icon(Icons.email, size: 20.w)),
        ),
        SizedBox(height: Sze.h * 1),
        CustomFormField3(
          type: EntryType.username,
          controller: signupController.nameController,
          icon: Padding(padding: EdgeInsets.only(right: 5.w), child: Icon(Icons.person_2_outlined, size: 20.w)),
        ),
        SizedBox(height: Sze.h * 1),
        CustomFormField3(
          type: EntryType.phone,
          controller: signupController.phoneController,
          icon: Padding(padding: EdgeInsets.only(right: 5.w), child: Icon(Icons.phone_android_outlined, size: 20.w)),
        ),
        SizedBox(height: Sze.h * 1),
        CustomFormField3(
          type: EntryType.passOne,
          controller: signupController.passOneController,
          obsecureAllow: true,
        ),
        SizedBox(height: Sze.h * 1),
        CustomFormField3(
          type: EntryType.passTwo,
          controller: signupController.passTwoController,
          obsecureAllow: true,
        ),
      ],
    );
  }
}
