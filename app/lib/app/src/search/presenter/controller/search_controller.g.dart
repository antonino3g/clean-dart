// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchController on _SearchController, Store {
  late final _$usersAtom =
      Atom(name: '_SearchController.users', context: context);

  @override
  ObservableList<UserEntity> get users {
    _$usersAtom.reportRead();
    return super.users;
  }

  @override
  set users(ObservableList<UserEntity> value) {
    _$usersAtom.reportWrite(value, super.users, () {
      super.users = value;
    });
  }

  late final _$isSuccessAtom =
      Atom(name: '_SearchController.isSuccess', context: context);

  @override
  bool get isSuccess {
    _$isSuccessAtom.reportRead();
    return super.isSuccess;
  }

  @override
  set isSuccess(bool value) {
    _$isSuccessAtom.reportWrite(value, super.isSuccess, () {
      super.isSuccess = value;
    });
  }

  late final _$searchUsersAsyncAction =
      AsyncAction('_SearchController.searchUsers', context: context);

  @override
  Future<void> searchUsers(String user) {
    return _$searchUsersAsyncAction.run(() => super.searchUsers(user));
  }

  @override
  String toString() {
    return '''
users: ${users},
isSuccess: ${isSuccess}
    ''';
  }
}
