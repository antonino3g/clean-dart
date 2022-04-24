import 'package:fpdart/fpdart.dart';

import '../../domain/entities/user_entity.dart';
import '../../domain/errors/errors.dart';
import '../../domain/repositories/search_repository.dart';
import '../../infra/datasource/search_datasource.dart';

class SearchRepository implements ISearchRepository {
  final ISearchDataSource _dataSource;

  SearchRepository(this._dataSource);
  @override
  Future<Either<Failure, List<UserEntity>>> getUsers(String user) async {
    try {
      var result = await _dataSource.getUsers(user);
      return Right(result);
    } catch (e) {
      return Left(FailureEmpty());
    }
  }
}
