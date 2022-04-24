import '../../infra/models/user_model.dart';

abstract class ISearchDataSource {
  Future<List<UserModel>> getUsers(String user);
}
