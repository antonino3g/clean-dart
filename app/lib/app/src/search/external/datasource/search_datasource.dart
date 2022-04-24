import 'package:dio/dio.dart';

import '../../infra/datasource/search_datasource.dart';
import '../../infra/models/user_model.dart';

class SearchDataSource implements ISearchDataSource {
  final Dio _dio;

  SearchDataSource(this._dio);

  @override
  Future<List<UserModel>> getUsers(String user) async {
    var response = await _dio.get(
      'https://api.github.com/search/users?q=$user',
    );

    return (response.data["items"] as List)
        .map((e) => UserModel.fromMap(e))
        .toList();
  }
}
