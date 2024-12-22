abstract class AppSettingsRepository {
  Future<bool> isFirstLaunch();

  Future<bool> isAppUnlocked();

  void setFirstLaunch();

  void setAppUnlocked();
}
