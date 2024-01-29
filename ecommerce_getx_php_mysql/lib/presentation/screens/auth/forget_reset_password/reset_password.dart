import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/forget_reset_password/resetpassword_controller.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/forget_reset_password/reset_password/pass_one_form_field.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/forget_reset_password/reset_password/pass_two_form_field.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/forget_reset_password/reset_password/reset_text.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/forget_reset_password/reset_password/save_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordController resetPasswordController = Get.find();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'RESET_PASSWORD'.tr,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        foregroundColor: Colors.grey,
      ),
      body: Form(
        key: resetPasswordController.formKey,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: const [
                ResetText(),
                SizedBox(height: 20),
                PassOneFormField(),
                PassTwoFormField(),
                SaveButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
