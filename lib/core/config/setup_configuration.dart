import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:test_birthday_app/generated/assets.gen.dart';

class AppConfig {
  final String adUnitId;

  const AppConfig(this.adUnitId);

  static Future<AppConfig> init() async {
    final json = jsonDecode(await rootBundle.loadString(Assets.json.config));
    return AppConfig(json['adUnitId']);
  }
}
