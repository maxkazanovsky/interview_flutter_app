import 'package:test_birthday_app/domain/entities/user.dart';

abstract class UserDataRepository {
  Future<UserData?> getUserData();

  void setUserData(UserData data);
}
