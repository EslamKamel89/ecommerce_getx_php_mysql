import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:ecommerce_getx_php_mysql/core/class/crud.dart';
import 'package:ecommerce_getx_php_mysql/core/class/status_request.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/core/functions/handling_status_request.dart';
import 'package:ecommerce_getx_php_mysql/data/data_provider/remote/auth/signup/signup_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignupControllerAbstract extends GetxController {
  signup();
  goToLogin();
  getData();
}

class SignupController extends SignupControllerAbstract {
  final GlobalKey<FormState> formKey = GlobalKey();
  late TextEditingController emailController;
  late TextEditingController nameController;
  late TextEditingController phoneController;
  late TextEditingController passOneController;
  late TextEditingController passTwoController;
  static final Crud _crud = Get.find();
  static List data = [];
  SignupData signupData = SignupData(_crud);
  StatusRequest statusRequest = StatusRequest.initial;
  @override
  Future getData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await signupData.postSignup(
      nameController.text,
      emailController.text,
      phoneController.text,
      passOneController.text,
    );
    statusRequest = handlingStatusRequest(response);
    if (statusRequest == StatusRequest.success) {
      // data.addAll(response['data']);
      'getData method from signupController'.prt;
      'StatusRequest.success'.pr;
    } else {
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
    nameController = TextEditingController();
    phoneController = TextEditingController();
    passTwoController = TextEditingController();
    passOneController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    nameController.dispose();
    phoneController.dispose();
    passTwoController.dispose();
    passOneController.dispose();
    super.dispose();
  }

  @override
  signup() async {
    await getData();
    if (statusRequest == StatusRequest.success) {
      Get.toNamed(
        AppRoutes.verifyOtpAfterSignup,
        arguments: {
          'email': emailController.text,
        },
      );
    }
  }

  @override
  goToLogin() {
    Get.offAllNamed(AppRoutes.login);
  }
}

class SignupBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupController(), fenix: true);
  }
}
