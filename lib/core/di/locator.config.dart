// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:go_router/go_router.dart' as _i583;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:test_birthday_app/core/config/setup_configuration.dart'
    as _i500;
import 'package:test_birthday_app/core/di/module.dart' as _i190;
import 'package:test_birthday_app/core/routing/router.dart' as _i137;
import 'package:test_birthday_app/data/repositories/app_settings_repository_impl.dart'
    as _i640;
import 'package:test_birthday_app/data/repositories/user_data_repository_impl.dart'
    as _i467;
import 'package:test_birthday_app/domain/repositories/app_settings_repository.dart'
    as _i892;
import 'package:test_birthday_app/domain/repositories/user_data_repository.dart'
    as _i98;
import 'package:test_birthday_app/presentation/features/onboarding/cubit/onboarding_cubit.dart'
    as _i286;
import 'package:test_birthday_app/presentation/features/settings/cubit/settings_cubit.dart'
    as _i69;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final diModule = _$DiModule();
    final appRouter = _$AppRouter();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => diModule.prefs,
      preResolve: true,
    );
    await gh.factoryAsync<_i500.AppConfig>(
      () => diModule.config,
      preResolve: true,
    );
    gh.lazySingleton<_i98.UserDataRepository>(
        () => _i467.UserDataRepositoryImpl(gh<_i460.SharedPreferences>()));
    gh.lazySingleton<_i892.AppSettingsRepository>(
        () => _i640.AppSettingsRepositoryImpl(gh<_i460.SharedPreferences>()));
    gh.factory<_i286.OnboardingCubit>(() => _i286.OnboardingCubit(
          gh<_i98.UserDataRepository>(),
          gh<_i892.AppSettingsRepository>(),
          gh<_i500.AppConfig>(),
        ));
    await gh.singletonAsync<_i583.GoRouter>(
      () => appRouter.initialize(gh<_i892.AppSettingsRepository>()),
      preResolve: true,
    );
    gh.factory<_i69.SettingsCubit>(() => _i69.SettingsCubit(
          gh<_i892.AppSettingsRepository>(),
          gh<_i98.UserDataRepository>(),
        ));
    return this;
  }
}

class _$DiModule extends _i190.DiModule {}

class _$AppRouter extends _i137.AppRouter {}
