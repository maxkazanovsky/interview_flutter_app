/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsColorsGen {
  const $AssetsColorsGen();

  /// File path: assets/colors/colors.xml
  String get colors => 'assets/colors/colors.xml';

  /// List of all assets
  List<String> get values => [colors];
}

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Lato-Black.ttf
  String get latoBlack => 'assets/fonts/Lato-Black.ttf';

  /// File path: assets/fonts/Lato-BlackItalic.ttf
  String get latoBlackItalic => 'assets/fonts/Lato-BlackItalic.ttf';

  /// File path: assets/fonts/Lato-Bold.ttf
  String get latoBold => 'assets/fonts/Lato-Bold.ttf';

  /// File path: assets/fonts/Lato-BoldItalic.ttf
  String get latoBoldItalic => 'assets/fonts/Lato-BoldItalic.ttf';

  /// File path: assets/fonts/Lato-Italic.ttf
  String get latoItalic => 'assets/fonts/Lato-Italic.ttf';

  /// File path: assets/fonts/Lato-Light.ttf
  String get latoLight => 'assets/fonts/Lato-Light.ttf';

  /// File path: assets/fonts/Lato-LightItalic.ttf
  String get latoLightItalic => 'assets/fonts/Lato-LightItalic.ttf';

  /// File path: assets/fonts/Lato-Regular.ttf
  String get latoRegular => 'assets/fonts/Lato-Regular.ttf';

  /// File path: assets/fonts/Lato-Thin.ttf
  String get latoThin => 'assets/fonts/Lato-Thin.ttf';

  /// File path: assets/fonts/Lato-ThinItalic.ttf
  String get latoThinItalic => 'assets/fonts/Lato-ThinItalic.ttf';

  /// List of all assets
  List<String> get values => [
        latoBlack,
        latoBlackItalic,
        latoBold,
        latoBoldItalic,
        latoItalic,
        latoLight,
        latoLightItalic,
        latoRegular,
        latoThin,
        latoThinItalic
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ad_close.png
  AssetGenImage get adClose => const AssetGenImage('assets/icons/ad_close.png');

  /// File path: assets/icons/back_arrow.png
  AssetGenImage get backArrow =>
      const AssetGenImage('assets/icons/back_arrow.png');

  /// File path: assets/icons/close.png
  AssetGenImage get close => const AssetGenImage('assets/icons/close.png');

  /// File path: assets/icons/refresh.png
  AssetGenImage get refresh => const AssetGenImage('assets/icons/refresh.png');

  /// File path: assets/icons/settings.png
  AssetGenImage get settings =>
      const AssetGenImage('assets/icons/settings.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [adClose, backArrow, close, refresh, settings];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/background_onboarding.jpg
  AssetGenImage get backgroundOnboarding =>
      const AssetGenImage('assets/images/background_onboarding.jpg');

  /// File path: assets/images/welcome_background.jpg
  AssetGenImage get welcomeBackground =>
      const AssetGenImage('assets/images/welcome_background.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [backgroundOnboarding, welcomeBackground];
}

class $AssetsJsonGen {
  const $AssetsJsonGen();

  /// File path: assets/json/config.json
  String get config => 'assets/json/config.json';

  /// List of all assets
  List<String> get values => [config];
}

class $AssetsLogoGen {
  const $AssetsLogoGen();

  /// File path: assets/logo/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/logo/logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [logo];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/arrow_right.svg
  SvgGenImage get arrowRight => const SvgGenImage('assets/svg/arrow_right.svg');

  /// File path: assets/svg/check.svg
  SvgGenImage get check => const SvgGenImage('assets/svg/check.svg');

  /// List of all assets
  List<SvgGenImage> get values => [arrowRight, check];
}

class Assets {
  Assets._();

  static const $AssetsColorsGen colors = $AssetsColorsGen();
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsJsonGen json = $AssetsJsonGen();
  static const $AssetsLogoGen logo = $AssetsLogoGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
