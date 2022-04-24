import 'package:mobx/mobx.dart';

import '../../domain/entities/user_entity.dart';
import '../../domain/usecases/search_usecase.dart';

part 'search_controller.g.dart';

class SearchController = _SearchController with _$SearchController;

abstract class _SearchController with Store {
  final ISearchUsecase _usecase;

  _SearchController(this._usecase);

  @observable
  ObservableList<UserEntity> users = ObservableList<UserEntity>();

  @observable
  bool isSuccess = false;

  @action
  Future<void> searchUsers(String user) async {
    users.clear();
    var result = await _usecase.getUsers(user);

    result.fold((left) {
      isSuccess = true;
    }, (rigth) {
      isSuccess = false;

      for (var element in rigth) {
        users.add(element);
      }
    });
  }
}
