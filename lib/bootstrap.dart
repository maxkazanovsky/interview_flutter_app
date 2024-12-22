import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:test_birthday_app/app.dart';
import 'package:test_birthday_app/core/di/locator.dart';

Future<void> launch() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  unawaited(MobileAds.instance.initialize());
  final router = locator<GoRouter>();
  runApp(App(router: router));
}
