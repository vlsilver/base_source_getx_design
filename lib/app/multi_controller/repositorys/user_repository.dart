import 'package:base_source/app/data/models/user_model.dart';
import 'package:base_source/app/data/providers/repository.dart';

class UserRepository extends Repository {
  UserRepository() : super();

  Future<UserModel> getUserLocal() async {
    try {
      return databaseProvider.getUser();
    } catch (exception) {
      rethrow;
    }
  }
}
