import 'package:base_source/app/modules/splash_module/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            'splash'.tr,
            style: Get.textTheme.bodyText1,
          ),
        ),
      ),
    );
  }
}
