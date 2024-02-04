import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/forget_reset_password/resetpassword_controller.dart';
import 'package:ecommerce_getx_php_mysql/core/class/handling_data_view.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/appbar.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/forget_reset_password/reset_password/pass_one_form_field.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/forget_reset_password/reset_password/pass_two_form_field.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/forget_reset_password/reset_password/reset_text.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/forget_reset_password/reset_password/save_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({super.key});
  final String email = Get.arguments['email'];
  @override
  Widget build(BuildContext context) {
    ResetPasswordController resetPasswordController = Get.find();
    resetPasswordController.email = email;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar.defaultAppBar(context, 'RESET_PASSWORD'.tr),
      body: GetBuilder<ResetPasswordController>(builder: (controller) {
        return HandlingDataView(
          statusRequest: controller.statusRequest,
          noDataTxt: 'Error - Try Again',
          child: Form(
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
      }),
    );
  }
}
