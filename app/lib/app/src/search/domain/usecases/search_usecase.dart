import 'package:fpdart/fpdart.dart';

import '../entities/user_entity.dart';
import '../errors/errors.dart';
import '../repositories/search_repository.dart';

abstract class ISearchUsecase {
  Future<Either<Failure, List<UserEntity>>> getUsers(String user);
}

class SearchUsecase implements ISearchUsecase {
  final ISearchRepository _repository;

  SearchUsecase(this._repository);

  @override
  Future<Either<Failure, List<UserEntity>>> getUsers(String user) async {
    if (user == "") {
      return Left(FailureEmpty());
    }
    return await _repository.getUsers(user);
  }
}
