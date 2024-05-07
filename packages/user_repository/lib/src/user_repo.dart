import 'package:user_repository/src/models/models.dart';

abstract class UserRepo {
  Stream<MyUser?> get user;

  Future<MyUser> signUp(MyUser user, String password);

  Future<void> signIn(MyUser user, String password);

  Future<void> setUserData(MyUser user);

  Future<void> logOut();
}
