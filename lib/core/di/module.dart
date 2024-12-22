import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_birthday_app/core/config/setup_configuration.dart';

@module
abstract class DiModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @preResolve
  Future<AppConfig> get config => AppConfig.init();
}
