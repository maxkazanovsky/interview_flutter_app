import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:test_birthday_app/core/theme/theme.dart';
import 'package:test_birthday_app/core/utils/build_context_extension.dart';
import 'package:test_birthday_app/generated/l10n.dart';

class App extends StatefulWidget {
  final GoRouter router;
  const App({required this.router, super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    precacheImage(context.images.welcomeBackground.provider(), context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: MaterialApp.router(
        title: 'Birthday test',
        theme: AppTheme.themeData,
        routerConfig: widget.router,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
      ),
    );
  }
}
