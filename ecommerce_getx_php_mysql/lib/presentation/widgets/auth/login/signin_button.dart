import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          if (formKey.currentState!.validate()) {
            'valid data'.prt;
          }
        },
        child: CustomButtonColored(title: 'CONTINUE'.tr));
  }
}
