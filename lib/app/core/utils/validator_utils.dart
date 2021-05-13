import 'package:get/get.dart';

class Validators {
  static String? validatePassword(String? value) {
    return value!.isEmpty
        ? 'error_empty'.tr
        : (value.length < 3 ? 'error_email_format'.tr : null);
  }

  static String? validateEmail(String? value) {
    if (value!.isEmpty) return 'error_empty'.tr;
    var pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    var regex = RegExp(pattern);
    return !regex.hasMatch(value) ? 'error_password_format'.tr : null;
  }
}
