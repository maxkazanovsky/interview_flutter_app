import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:test_birthday_app/core/di/locator.dart';
import 'package:test_birthday_app/core/routing/routes.dart';
import 'package:test_birthday_app/domain/repositories/app_settings_repository.dart';
import 'package:test_birthday_app/presentation/features/onboarding/cubit/onboarding_cubit.dart';
import 'package:test_birthday_app/presentation/features/onboarding/onboadring.dart';
import 'package:test_birthday_app/presentation/features/settings/cubit/settings_cubit.dart';
import 'package:test_birthday_app/presentation/features/settings/settings.dart';
import 'package:test_birthday_app/presentation/features/welcome/welcome_screen.dart';

@module
abstract class AppRouter {
  static final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @preResolve
  @singleton
  Future<GoRouter> initialize(AppSettingsRepository repository) async {
    return GoRouter(
        navigatorKey: _navigatorKey,
        initialLocation: await repository.isFirstLaunch() ? AppRoutes.welcome.path : AppRoutes.onboarding.path,
        routes: [
          GoRoute(
            name: AppRoutes.welcome.name,
            path: AppRoutes.welcome.path,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return CustomTransitionPage(
                  child: const WelcomeScreen(),
                  transitionsBuilder: (BuildContext context, Animation<double> animation,
                      Animation<double> secondaryAnimation, Widget child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  });
            },
          ),
          GoRoute(
            name: AppRoutes.onboarding.name,
            path: AppRoutes.onboarding.path,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return CustomTransitionPage(
                  child: BlocProvider(
                    create: (_) => locator<OnboardingCubit>(),
                    child: const Onboarding(),
                  ),
                  transitionsBuilder: (BuildContext context, Animation<double> animation,
                      Animation<double> secondaryAnimation, Widget child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  });
            },
          ),
          GoRoute(
              name: AppRoutes.settings.name,
              path: AppRoutes.settings.path,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return CustomTransitionPage(
                    child: BlocProvider(
                      create: (_) => locator<SettingsCubit>(),
                      child: Settings(),
                    ),
                    transitionsBuilder: (BuildContext context, Animation<double> animation,
                        Animation<double> secondaryAnimation, Widget child) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    });
              })
        ]);
  }
}
