import 'package:base_source/app/data/services/authen_services.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class ApiService extends GetxService {
  Future<ApiService> init() async {
    final _authen = Get.find<AuthenService>();
    if (_authen.isAuthen) {
      header = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${_authen.accessToken}'
      };
    } else {
      header = {'Content-Type': 'application/json'};
    }
    return this;
  }

  late final Map<String, String> header;
}
