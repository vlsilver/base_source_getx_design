import 'package:base_source/app/multi_controller/controllers/user_controller.dart';
import 'package:get/instance_manager.dart';

class MultiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserController());
  }
}
