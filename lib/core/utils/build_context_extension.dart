import 'package:flutter/material.dart';
import 'package:test_birthday_app/generated/assets.gen.dart';
import 'package:test_birthday_app/generated/l10n.dart';

extension BuildContextExtension on BuildContext {
  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  $AssetsImagesGen get images => Assets.images;

  $AssetsIconsGen get icons => Assets.icons;

  $AssetsSvgGen get svg => Assets.svg;

  AppLocalizations get l10n => AppLocalizations.of(this);

  ThemeData get theme => Theme.of(this);

  TextTheme get textStyles => theme.textTheme;
}
