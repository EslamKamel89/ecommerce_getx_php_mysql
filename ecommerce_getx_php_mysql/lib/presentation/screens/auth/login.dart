import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/login/login_controller.dart';
import 'package:ecommerce_getx_php_mysql/buisness_logic/services/services_controller.dart';
import 'package:ecommerce_getx_php_mysql/core/class/handling_data_view.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/core/functions/exit_app_alert.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/appbar.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/login/email_password_form_field.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/login/forgetpassword.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/login/signin_button.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/login/signin_welcome_text.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/login/signup_button.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey();
  InitServices services = Get.find();
  LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    FirebaseMessaging.instance.getToken().then((value) {
      'The current App TOKEN'.prt;
      'Token: $value'.pr;
    });

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar.defaultAppBar(context, 'SIGN_IN'.tr),
      body: PopScope(
        canPop: false,
        onPopInvoked: (cond) {
          exitAppAlert(context);
        },
        child: GetBuilder<LoginController>(builder: (controller) {
          return HandlingDataView(
            statusRequest: controller.statusRequest,
            noDataTxt: 'Username Or Email Not Correct',
            child: Form(
              key: formKey,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      const SignInWelcomeTextAndLogo(),
                      const EmailAndPasswordFormField(),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.topRight,
                        child: ForgetPasswordButton(),
                      ),
                      SignInButton(formKey: formKey),
                      const SizedBox(height: 20),
                      Text(
                        "DON'T_HAVE_AN_ACCOUNT".tr,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ).cr,
                      CreateNewAccount(),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
