import 'package:base_source/app/modules/login_module/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            'login'.tr,
            style: Get.textTheme.bodyText1,
          ),
        ),
      ),
    );
  }
}
