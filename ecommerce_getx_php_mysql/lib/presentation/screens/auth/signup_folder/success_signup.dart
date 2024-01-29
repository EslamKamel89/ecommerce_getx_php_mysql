import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/signup_folder/success_signup_controller.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/appbar.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/signup_folder/success_signup/check_icon.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/signup_folder/success_signup/signin_button_from_success_signup.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/signup_folder/success_signup/success_sign_up_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupSuccessScreen extends StatelessWidget {
  SignupSuccessScreen({super.key});
  late SuccessSignupController successSignupController;

  @override
  Widget build(BuildContext context) {
    successSignupController = Get.find();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar.defaultAppBar(context, 'SUCCESS'.tr),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: double.infinity),
              const CheckIcon(),
              const SuccessSignUpText(),
              const Spacer(),
              SigninButtonFromSuccessSignup(),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
