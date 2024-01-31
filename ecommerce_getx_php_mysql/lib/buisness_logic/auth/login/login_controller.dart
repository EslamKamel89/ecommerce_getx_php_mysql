import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';
import 'package:ecommerce_getx_php_mysql/core/class/status_request.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/core/functions/handling_status_request.dart';
import 'package:ecommerce_getx_php_mysql/data/data_provider/remote/auth/login/login_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginControllerAbstract extends GetxController {
  login();
  goToSignup();
  goToForgetPassword();
  getData();
}

class LoginController extends LoginControllerAbstract {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  StatusRequest statusRequest = StatusRequest.initial;
  List data = [];
  static Crud crud = Get.find();
  LoginData loginData = LoginData(crud);
  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await loginData.postLogin(emailController.text, passwordController.text);
    statusRequest = handlingStatusRequest(response);
    if (statusRequest == StatusRequest.success) {
      'getData from LoginController'.prt;
      'statusRequest == StatusRequest.success'.pr;
    } else if (statusRequest != StatusRequest.loading) {
      Future.delayed(const Duration(seconds: 2)).then((value) {
        statusRequest = StatusRequest.initial;
        update();
      });
    }
    update();
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  login() async {
    await getData();
    if (statusRequest == StatusRequest.success) {
      Get.offNamed(AppRoutes.testScreen);
    } else {
      Future.delayed(const Duration(seconds: 2)).then((value) {
        statusRequest = StatusRequest.initial;
        update();
      });
    }
    update();
  }

  @override
  goToSignup() {
    Get.delete<LoginController>();
    Get.toNamed(AppRoutes.signup);
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoutes.forgetPassword);
  }
}

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(), fenix: true);
  }
}
