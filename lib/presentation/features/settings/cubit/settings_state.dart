part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.loading() = _Loading;
  const factory SettingsState.loaded({required UserData userData, required bool isAppUnlocked}) = _Loaded;
}
