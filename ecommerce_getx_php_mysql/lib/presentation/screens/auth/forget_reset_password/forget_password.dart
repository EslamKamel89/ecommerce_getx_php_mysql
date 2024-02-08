import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/forget_reset_password/forgetpassword_controller.dart';
import 'package:ecommerce_getx_php_mysql/core/class/handling_data_view.dart';
import 'package:ecommerce_getx_php_mysql/core/class/responsive_info.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/appbar.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/forget_reset_password/forget_password/check_email_button.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/forget_reset_password/forget_password/email_form_field.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/forget_reset_password/forget_password/forget_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar.defaultAppBar(context, 'FORGET_PASSWORD'.tr),
      body: GetBuilder<ForgetPasswordController>(builder: (controller) {
        return HandlingDataView(
          statusRequest: controller.statusRequest,
          noDataTxt: 'This Email doesnot Exist',
          child: Form(
            key: controller.formKey,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    const ForgetText(),
                    SizedBox(height: Sze.w * 2),
                    const EmailFormField(),
                    SizedBox(height: Sze.w),
                    const CheckEmailButton(),
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
