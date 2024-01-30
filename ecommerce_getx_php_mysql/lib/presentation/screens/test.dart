// ignore_for_file: unused_import

import 'package:ecommerce_getx_php_mysql/buisness_logic/connection/test_controller.dart';
import 'package:ecommerce_getx_php_mysql/core/class/handling_data_view.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/core/functions/check_internet.dart';
import 'package:ecommerce_getx_php_mysql/presentation/components/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TestController controller = Get.find();
    return Scaffold(
      appBar: CustomAppBar.defaultAppBar(context, 'Test Screen'),
      body: GetBuilder<TestController>(
        builder: (controller) {
          return HandlingDataView(
            statusRequest: controller.statusRequest,
            successWidget: ListView.builder(
              itemCount: controller.data.length.pr,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(
                      controller.data[index]['users_name'].toString().pr,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

/* 
class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.defaultAppBar(context, 'Test Screen'),
      body: Column(
        children: [
          TextButton(
            onPressed: () async {
              if (await checkInternet()) {
                'Internet is avaliable'.prt;
              } else {
                'Internet is not avaliable'.prt;
              }
            },
            child: const Text('Check Internet'),
          ),
        ],
      ),
    );
  }
}
 */