import 'package:user_repository/src/entities/entities.dart';

class MyUser {
  final String userId;
  final String email;
  final String name;
  final bool hasActiveCart;

  MyUser({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasActiveCart,
  });

  static final empty = MyUser(
    userId: '',
    email: '',
    name: '',
    hasActiveCart: false,
  );

  MyUserEntity toEntity() => MyUserEntity(
        userId: userId,
        email: email,
        name: name,
        hasActiveCart: hasActiveCart,
      );

  static MyUser fromEntity(MyUserEntity myUserEntity) => MyUser(
        userId: myUserEntity.userId,
        email: myUserEntity.email,
        name: myUserEntity.name,
        hasActiveCart: myUserEntity.hasActiveCart,
      );

  @override
  String toString() {
    return 'MyUser: $userId, $email, $name, $hasActiveCart';
  }
}
