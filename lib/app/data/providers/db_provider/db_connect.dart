import 'package:base_source/app/data/models/user_model.dart';
import 'package:get/get_connect.dart';
import 'package:get_storage/get_storage.dart';

class DatabaseConnect extends GetConnect {
  DatabaseConnect() {
    _db = GetStorage();
  }
  late GetStorage _db;
  Future<UserModel> findData() async {
    await _db.read('keyData');
    await Future.delayed(Duration(milliseconds: 1000));
    return UserModel.fakeData();
  }
}
