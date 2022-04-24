import '../../domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required String login,
    required String avatarUrl,
  }) : super(login: login, avatarUrl: avatarUrl);

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      login: map['login'],
      avatarUrl: map['avatar_url'],
    );
  }
}
