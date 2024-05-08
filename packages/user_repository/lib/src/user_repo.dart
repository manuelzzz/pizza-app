import 'package:user_repository/src/models/models.dart';

abstract class UserRepo {
  Stream<MyUser?> get user;

  Future<MyUser> signUp(MyUser myUser, String password);

  Future<void> signIn(String email, String password);

  Future<void> setUserData(MyUser user);

  Future<void> logOut();
}
