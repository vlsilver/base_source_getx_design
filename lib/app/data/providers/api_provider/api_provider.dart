import 'package:base_source/app/core/utils/error_utils.dart';
import 'package:base_source/app/data/models/user_model.dart';
import 'package:base_source/app/data/providers/api_provider/api_connect.dart';
import 'package:get/get_connect.dart';

class ApiProvider {
  late ApiConnect _api;
  ApiProvider() {
    _api = ApiConnect();
  }

  Future<UserModel> login({
    required String phoneEmail,
    required String password,
  }) async {
    final _jsonString = {'phoneEmail': phoneEmail, 'password': password};
    final Response _response =
        await _api.postApi(path: 'auth/login', body: _jsonString);
    if (_response.statusCode == 200) {
      final _user = UserModel.fromMap(_response.body);
      _api.resetHeaders(accessToken: _user.accessToken);
      return _user;
    } else {
      throw LoginException(statusCode: _response.statusCode);
    }
  }
}
