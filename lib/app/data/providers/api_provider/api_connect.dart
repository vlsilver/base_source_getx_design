import 'package:base_source/app/data/services/api_services.dart';
import 'package:get/get_connect.dart';
import 'package:get/instance_manager.dart';

class ApiConnect extends GetConnect {
  late String _baseUrl;
  late Map<String, String> _headers;

  @override
  void onInit() {
    _baseUrl = '';
    _headers = Get.find<ApiService>().header;
  }

  void resetHeaders({required String accessToken}) {
    _headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken'
    };
  }

  Future postApi({
    String path = '',
    Map<String, String>? body,
    Map<String, String>? query,
  }) async {
    return httpClient.post(
      _baseUrl + path,
      body: body,
      query: query,
      headers: _headers,
    );
  }

  Future getApi({
    String path = '',
    Map<String, String>? body,
    Map<String, String>? query,
  }) {
    return httpClient.get(
      _baseUrl + path,
      query: query,
      headers: _headers,
    );
  }
}
