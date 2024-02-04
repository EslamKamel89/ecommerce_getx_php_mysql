import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';
import 'package:ecommerce_getx_php_mysql/core/class/status_request.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/core/functions/handling_status_request.dart';
import 'package:ecommerce_getx_php_mysql/data/data_provider/remote/auth/forget_password/reset_password_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordControllerAbstract extends GetxController {
  goToResetPasswordSuccess();
  getData();
  checkData();
}

class ResetPasswordController extends ResetPasswordControllerAbstract {
  GlobalKey<FormState> formKey = GlobalKey();
  late TextEditingController passOneController;
  late TextEditingController passTwoController;
  String email = '';
  StatusRequest statusRequest = StatusRequest.initial;
  static final Crud crud = Get.find();
  ResetPasswordData resetPasswordData = ResetPasswordData(crud);
  @override
  Future getData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await resetPasswordData.postResetPassword(email, passOneController.text);
    statusRequest = handlingStatusRequest(response);
    if (statusRequest == StatusRequest.success) {
      'Password Reset completed with success'.prt;
      goToResetPasswordSuccess();
    } else {
      'Password Reset Failed to Complete'.prt;
      Future.delayed(const Duration(seconds: 2)).then((value) {
        statusRequest = StatusRequest.initial;
        update();
      });
    }
    update();
  }

  @override
  Future checkData() async {
    await getData();
  }

  @override
  void onInit() {
    passOneController = TextEditingController();
    passTwoController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    passOneController.dispose();
    passTwoController.dispose();
    super.dispose();
  }

  @override
  goToResetPasswordSuccess() {
    Get.toNamed(AppRoutes.resetPasswordSuccess);
  }
}

class ResetPasswordBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetPasswordController(), fenix: true);
  }
}
