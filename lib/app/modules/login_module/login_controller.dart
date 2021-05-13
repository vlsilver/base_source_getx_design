import 'package:base_source/app/core/utils/enum_utils.dart';
import 'package:base_source/app/core/utils/error_utils.dart';
import 'package:base_source/app/data/services/authen_services.dart';
import 'package:base_source/app/multi_controller/controllers/user_controller.dart';
import 'package:base_source/app/routes/routes.dart';
import 'package:get/get.dart';

import 'login_repository.dart';

class LoginController extends GetxController {
  final _repository = LoginRepository();
  LoadDataStatus status = LoadDataStatus.INITIAL;

  Future<void> login({
    required String phoneEmail,
    required String password,
  }) async {
    try {
      status = LoadDataStatus.LOADING;
      update();
      final _user =
          await _repository.login(phoneEmail: phoneEmail, password: password);
      Get.find<UserController>().userModel = _user;
      await Get.find<AuthenService>()
          .setAccessToken(accesstoken: _user.accessToken);
      status = LoadDataStatus.SUCCESS;
      await Get.toNamed(AppRoutes.HOME);
    } catch (exception) {
      status = LoadDataStatus.FAILURE;
      AppError.handleError(exception: exception);
      update();
    }
  }
}
