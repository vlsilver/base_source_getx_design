import 'package:base_source/app/core/utils/error_utils.dart';
import 'package:base_source/app/data/models/user_model.dart';
import 'package:base_source/app/data/services/authen_services.dart';
import 'package:base_source/app/multi_controller/repositorys/user_repository.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class UserController extends GetxController {
  @override
  void onInit() async {
    if (Get.find<AuthenService>().isAuthen) {
      await getUserLocal();
    }
    super.onInit();
  }

  UserModel userModel = UserModel.empty();
  UserRepository _repository = UserRepository();

  Future<void> getUserLocal() async {
    try {
      userModel = await _repository.getUserLocal();
    } catch (exception) {
      AppError.handleError(exception: exception);
    }
  }
}
