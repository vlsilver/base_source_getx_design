import 'package:base_source/app/core/theme/app_theme.dart';
import 'package:base_source/app/core/values/key_values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';

class SettingService extends GetxService {
  Future<SettingService> init() async {
    _storage = GetStorage();
    _isLightMode = _storage.read(AppKeys.THEME) ?? true;
    _language = _storage.read(AppKeys.LOCALE) ?? '';
    return this;
  }

  late final GetStorage _storage;
  late bool _isLightMode;
  late String _language;

  ThemeData get theme => _isLightMode ? AppTheme.lightMode : AppTheme.darkMode;

  Locale get locale =>
      _language.isEmpty ? Get.deviceLocale ?? Locale('en') : Locale(_language);

  void changeTheme() =>
      Get.changeTheme(!_isLightMode ? AppTheme.lightMode : AppTheme.darkMode);

  void changeLocale(String language) => Get.updateLocale(Locale(language));
}
