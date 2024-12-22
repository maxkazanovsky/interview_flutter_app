import 'package:test_birthday_app/domain/repositories/app_settings_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String _kAppUnlockedKey = 'app_unlocked_key';
const String _kFirstLaunch = 'first_launch';

@LazySingleton(as: AppSettingsRepository)
class AppSettingsRepositoryImpl implements AppSettingsRepository {
  final SharedPreferences _prefs;
  AppSettingsRepositoryImpl(this._prefs);

  @override
  Future<bool> isAppUnlocked() async {
    final value = _prefs.getBool(_kAppUnlockedKey);
    return value ?? false;
  }

  @override
  Future<bool> isFirstLaunch() async {
    final value = _prefs.getBool(_kFirstLaunch);
    return value ?? true;
  }

  @override
  void setAppUnlocked() async {
    _prefs.setBool(_kAppUnlockedKey, true);
  }

  @override
  void setFirstLaunch() {
    _prefs.setBool(_kFirstLaunch, false);
  }
}
