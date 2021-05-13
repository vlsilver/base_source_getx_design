import 'package:base_source/app/data/providers/api_provider/api_provider.dart';
import 'package:base_source/app/data/providers/db_provider/db_provider.dart';

abstract class Repository {
  Repository() {
    _apiProvider = ApiProvider();
    _databaseProvider = DatabaseProvider();
  }
  late ApiProvider _apiProvider;
  late DatabaseProvider _databaseProvider;

  ApiProvider get apiProvider => _apiProvider;
  DatabaseProvider get databaseProvider => _databaseProvider;
}
