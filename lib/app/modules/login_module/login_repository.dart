import 'package:base_source/app/data/models/user_model.dart';
import 'package:base_source/app/data/providers/repository.dart';

class LoginRepository extends Repository {
  LoginRepository() : super();

  Future<UserModel> login({
    required String phoneEmail,
    required String password,
  }) async {
    try {
      final _user =
          apiProvider.login(phoneEmail: phoneEmail, password: password);
      return _user;
    } catch (exception) {
      rethrow;
    }
  }
}
