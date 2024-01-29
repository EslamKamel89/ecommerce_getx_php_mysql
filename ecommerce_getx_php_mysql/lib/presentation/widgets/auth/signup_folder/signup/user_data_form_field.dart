import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/signup_folder/signup_controller.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/ui_components.dart';
import 'package:flutter/material.dart';
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
          icon: const Icon(Icons.email),
        ),
        CustomFormField3(
          type: EntryType.username,
          controller: signupController.nameController,
          icon: const Icon(Icons.person_2_outlined),
        ),
        CustomFormField3(
          type: EntryType.phone,
          controller: signupController.phoneController,
          icon: const Icon(Icons.phone_android_outlined),
        ),
        CustomFormField3(
          type: EntryType.passOne,
          controller: signupController.passOneController,
          obsecureAllow: true,
        ),
        CustomFormField3(
          type: EntryType.passTwo,
          controller: signupController.passTwoController,
          obsecureAllow: true,
        ),
      ],
    );
  }
}
