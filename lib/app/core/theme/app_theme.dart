import 'package:base_source/app/core/theme/color_theme.dart';
import 'package:base_source/app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static get lightMode => ThemeData.light().copyWith(
      scaffoldBackgroundColor: AppColorTheme.white,
      textTheme: TextTheme(bodyText1: AppTextTheme.bodyText1));
  static get darkMode => ThemeData.dark().copyWith(
      scaffoldBackgroundColor: AppColorTheme.black,
      textTheme: TextTheme(bodyText1: AppTextTheme.bodyText1));
}
