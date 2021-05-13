import 'package:base_source/app/modules/home_module/home_binding.dart';
import 'package:base_source/app/modules/home_module/home_page.dart';
import 'package:base_source/app/modules/login_module/login_binding.dart';
import 'package:base_source/app/modules/login_module/login_page.dart';
import 'package:base_source/app/modules/splash_module/splash_binding.dart';
import 'package:base_source/app/modules/splash_module/splash_page.dart';
import 'package:base_source/app/routes/routes.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.HOME,
      binding: HomeBinding(),
      page: () => HomePage(),
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    )
  ];
}
