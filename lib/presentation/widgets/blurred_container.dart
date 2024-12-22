import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:test_birthday_app/generated/colors.gen.dart';

const double _heightBlurredContainer = 67;

class BlurredContainer extends StatelessWidget {
  final Widget child;
  final double borderRadius;
  final Color borderColor;
  final double borderWidth;
  final Color backgroundColor;
  final double blurAmount;
  final double width;
  final VoidCallback? onTap;
  final Alignment alignment;

  const BlurredContainer({
    super.key,
    required this.child,
    required this.width,
    this.borderRadius = 15,
    this.borderColor = AppColors.secondary,
    this.borderWidth = 1,
    this.backgroundColor = AppColors.black,
    this.blurAmount = 3.0,
    this.onTap,
    this.alignment = Alignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Container(
        width: width,
        constraints: BoxConstraints(minHeight: _heightBlurredContainer),
        // alignment: alignment,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(
            color: borderColor,
            width: borderWidth,
          ),
          color: backgroundColor.withAlpha(50),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: blurAmount, sigmaY: blurAmount),
            child: child,
          ),
        ),
      ),
    );
  }
}
