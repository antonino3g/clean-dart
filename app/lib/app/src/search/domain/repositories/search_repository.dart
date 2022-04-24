import 'package:fpdart/fpdart.dart';

import '../entities/user_entity.dart';
import '../errors/errors.dart';

abstract class ISearchRepository {
  Future<Either<Failure, List<UserEntity>>> getUsers(String user);
}
