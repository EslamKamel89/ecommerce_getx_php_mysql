import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/login/login_controller.dart';
import 'package:ecommerce_getx_php_mysql/buisness_logic/services/services_controller.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/core/functions/exit_app_alert.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/login/email_password_form_field.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/login/forgetpassword.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/login/signin_button.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/login/signin_welcome_text.dart';
import 'package:ecommerce_getx_php_mysql/presentation/widgets/auth/login/signup_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey();
  InitServices services = Get.find();
  LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.find();
    // services.sharedPreferences.clear();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'SIGN_IN'.tr,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: PopScope(
        canPop: false,
        onPopInvoked: (cond) {
          exitAppAlert(context);
        },
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
      ),
    );
  }
}
