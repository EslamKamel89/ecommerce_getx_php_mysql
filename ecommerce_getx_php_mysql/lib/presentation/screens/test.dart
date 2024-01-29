import 'package:ecommerce_getx_php_mysql/buisness_logic/connection/test_controller.dart';
import 'package:ecommerce_getx_php_mysql/core/class/handling_data_view.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
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
            child: ListView.builder(
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
