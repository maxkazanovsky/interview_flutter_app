import 'dart:convert';

import 'package:test_birthday_app/domain/entities/user.dart';
import 'package:test_birthday_app/domain/repositories/user_data_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String _kUserData = 'user_data';

@LazySingleton(as: UserDataRepository)
class UserDataRepositoryImpl implements UserDataRepository {
  final SharedPreferences _prefs;

  UserDataRepositoryImpl(this._prefs);

  @override
  Future<UserData?> getUserData() async {
    final json = _prefs.getString(_kUserData);
    if (json == null) {
      return null;
    }
    return UserData.fromMap(jsonDecode(json));
  }

  @override
  void setUserData(UserData data) {
    final json = jsonEncode(data.toMap());
    _prefs.setString(_kUserData, json);
  }
}
