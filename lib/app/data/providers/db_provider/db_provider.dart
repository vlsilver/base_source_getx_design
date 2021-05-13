import 'package:base_source/app/data/models/user_model.dart';
import 'package:base_source/app/data/providers/db_provider/db_connect.dart';

class DatabaseProvider {
  late DatabaseConnect _db;
  DatabaseProvider() {
    _db = DatabaseConnect();
  }

  Future<UserModel> getUser() async {
    final _user = _db.findData();
    return _user;
  }
}
