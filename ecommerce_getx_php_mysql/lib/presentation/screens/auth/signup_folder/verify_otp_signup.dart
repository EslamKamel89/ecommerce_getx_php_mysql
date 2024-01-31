import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/signup_folder/verify_otp_signup_controller.dart';
import 'package:ecommerce_getx_php_mysql/core/class/handling_data_view.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/appbar.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/signup_folder/verify_otp_signup/verify_otp_signup.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/signup_folder/verify_otp_signup/verify_otp_signup_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyOtpSignupScreen extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey();
  VerifyOtpSignupScreen({super.key});
  String email = Get.arguments['email'];

  @override
  Widget build(BuildContext context) {
    VerifyOtpSignupController controller = Get.find();
    controller.email = email;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar.defaultAppBar(context, 'VERIFY_EMAIL'.tr),
      body: GetBuilder<VerifyOtpSignupController>(
        builder: (controller) {
          return HandlingDataView(
            noDataTxt: 'Otp Password is Wrong',
            statusRequest: controller.statusRequest,
            child: Form(
              key: formKey,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: const [
                      VerifyOtpSignupText(),
                      VeirifyOtpSignup(),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
