import 'package:base_source/app/core/values/key_values.dart';
import 'package:base_source/app/routes/routes.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';

class AuthenService extends GetxService {
  Future<AuthenService> init() async {
    _storage = GetStorage();
    isFirstTime = _storage.read(AppKeys.FIRST_TIME) ?? true;
    if (isFirstTime) {
      await _storage.write(AppKeys.FIRST_TIME, false);
    } else {
      accessToken = _storage.read(AppKeys.ACCESS_TOKEN);
      accessToken != null ? isAuthen = true : isAuthen = false;
    }
    return this;
  }

  late final GetStorage _storage;
  late final String? accessToken;
  late final bool isFirstTime;
  late bool isAuthen = false;

  String firstPage() {
    if (isFirstTime) {
      return AppRoutes.SPLASH;
    } else {
      return isAuthen ? AppRoutes.HOME : AppRoutes.LOGIN;
    }
  }

  Future<void> setAccessToken({required String accesstoken}) async {
    await _storage.write(AppKeys.ACCESS_TOKEN, accesstoken);
  }
}
