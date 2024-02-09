import 'package:ecommerce_getx_php_mysql/buisness_logic/services/services_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';
import 'package:ecommerce_getx_php_mysql/core/class/status_request.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/core/functions/handling_status_request.dart';
import 'package:ecommerce_getx_php_mysql/data/data_provider/remote/auth/login/login_data.dart';
import 'package:ecommerce_getx_php_mysql/data/models/user/user_model.dart';
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
  InitServices initServices = Get.find();
  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await loginData.postLogin(emailController.text, passwordController.text);
    statusRequest = handlingStatusRequest(response);
    if (statusRequest == StatusRequest.success) {
      'getData from LoginController'.prt;
      'statusRequest == StatusRequest.success'.pr;
      data = [];
      data.add(response['data']);
      // initServices.sharedPreferences.setString('id', data[0]['users_id'].toString());
      // initServices.sharedPreferences.setString('name', data[0]['users_name'].toString());
      // initServices.sharedPreferences.setString('email', data[0]['users_email'].toString());
      // initServices.sharedPreferences.setString('phone', data[0]['users_phone'].toString());
      // initServices.sharedPreferences.setString('createTime', data[0]['users_createtime'].toString());
      User currentUser = User.fromMap(data[0]);
      String userJson = currentUser.toJson();
      initServices.sharedPreferences.setString('user', userJson);
      initServices.sharedPreferences.setBool('USER_SIGNIN', true);
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
      Get.toNamed(AppRoutes.mainpage);
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


/*
{
  "status": "success",
  "data": {
    "users_id": 22,
    "users_name": "eslam",
    "users_email": "eslam@gmail.com",
    "users_password": "c1ae193b8eb46a0d855ba77094e7dd2077f63f8a",
    "users_phone": "01020504470",
    "users_verifycode": 27896,
    "users_approve": 1,
    "users_createtime": "2024-01-26 18:16:36"
  }
}
 */