import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/signup_folder/signup_controller.dart';
import 'package:ecommerce_getx_php_mysql/core/class/handling_data_view.dart';
import 'package:ecommerce_getx_php_mysql/core/class/responsive_info.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/appbar.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/signup_folder/signup/have_account_text.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/signup_folder/signup/signin_button.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/signup_folder/signup/signup_button_signup_screen.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/signup_folder/signup/user_data_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  @override
  Widget build(BuildContext context) {
    SignupController signupController = Get.find<SignupController>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar.defaultAppBar(context, 'SIGN_UP'.tr),
      body: GetBuilder<SignupController>(builder: (signupController) {
        return HandlingDataView(
          noDataTxt: 'Username Or Email Already Exists',
          statusRequest: signupController.statusRequest,
          child: Form(
            key: signupController.formKey,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    const UserDataFormField(),
                    SizedBox(height: Sze.h),
                    const SignupButton(),
                    SizedBox(height: Sze.h),
                    const HaveAccountText(),
                    const SigninButton(),
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
