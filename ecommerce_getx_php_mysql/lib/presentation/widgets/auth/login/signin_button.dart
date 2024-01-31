import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/login/login_controller.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInButton extends StatelessWidget {
  SignInButton({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;
  LoginController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () async {
          if (formKey.currentState!.validate()) {
            'valid data'.prt;
            await controller.login();
          }
        },
        child: CustomButtonColored(title: 'CONTINUE'.tr));
  }
}
