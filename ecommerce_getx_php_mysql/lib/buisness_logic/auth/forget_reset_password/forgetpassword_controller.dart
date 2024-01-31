import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';
import 'package:ecommerce_getx_php_mysql/core/class/status_request.dart';
import 'package:ecommerce_getx_php_mysql/core/functions/handling_status_request.dart';
import 'package:ecommerce_getx_php_mysql/data/data_provider/remote/auth/forget_password/check_email_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordAbstract extends GetxController {
  goToVerifyCode();
  getData();
}

class ForgetPasswordController extends ForgetPasswordAbstract {
  final GlobalKey<FormState> formKey = GlobalKey();
  late TextEditingController emailController;
  StatusRequest statusRequest = StatusRequest.initial;
  List data = [];
  static Crud crud = Get.find();
  CheckEmailData checkEmailData = CheckEmailData(crud);

  @override
  Future getData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await checkEmailData.postCheckEmail(emailController.text);
    statusRequest = handlingStatusRequest(response);
    if (statusRequest == StatusRequest.success) {
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
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  goToVerifyCode() async {
    await getData();
    if (statusRequest == StatusRequest.success) {
      Get.toNamed(AppRoutes.verifyOtpAfterResetPassword);
    }
  }
}

class ForgetPasswordBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgetPasswordController(), fenix: true);
  }
}
