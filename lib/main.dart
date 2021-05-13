import 'package:base_source/app/core/transition/app_transition.dart';
import 'package:base_source/app/data/services/api_services.dart';
import 'package:base_source/app/data/services/authen_services.dart';
import 'package:base_source/app/data/services/setting_services.dart';
import 'package:base_source/app/multi_controller/bindings/multi_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/pages_routes.dart';

void main() async {
  await GetStorage.init();
  await Get.putAsync(() => SettingService().init());
  await Get.putAsync(() => AuthenService().init());
  await Get.putAsync(() => ApiService().init());
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    translations: AppTranslation(),
    theme: Get.find<SettingService>().theme,
    locale: Get.find<SettingService>().locale,
    defaultTransition: Transition.cupertino,
    initialBinding: MultiBinding(),
    initialRoute: Get.find<AuthenService>().firstPage(),
    getPages: AppPages.pages,
  ));
}
