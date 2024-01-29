import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/forget_reset_password/forgetpassword_controller.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/forget_reset_password/forget_password/check_email_button.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/forget_reset_password/forget_password/email_form_field.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/forget_reset_password/forget_password/forget_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordController forgetPassordController = Get.find();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _appBar(context),
      body: Form(
        key: forgetPassordController.formKey,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: const [
                ForgetText(),
                SizedBox(height: 20),
                EmailFormField(),
                CheckEmailButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      title: Text(
        'FORGET_PASSWORD'.tr,
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      elevation: 0.0,
      backgroundColor: Colors.white,
      centerTitle: true,
      foregroundColor: Colors.grey,
    );
  }
}
