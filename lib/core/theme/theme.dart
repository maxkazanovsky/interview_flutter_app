import 'package:flutter/material.dart';
import 'package:test_birthday_app/generated/colors.gen.dart';
import 'package:test_birthday_app/generated/fonts.gen.dart';

class AppTheme {
  static final TextTheme textTheme = TextTheme(
    headlineSmall: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w800,
      fontFamily: AppFonts.lato,
      color: AppColors.primary,
    ),
    titleLarge: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w800,
      fontFamily: AppFonts.lato,
      color: AppColors.primary,
    ),
    titleMedium: TextStyle(
      fontSize: 23,
      fontWeight: FontWeight.w800,
      fontFamily: AppFonts.lato,
      color: AppColors.primary,
    ),
    titleSmall: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w800,
      fontFamily: AppFonts.lato,
      color: AppColors.primary,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontFamily: AppFonts.lato,
      fontWeight: FontWeight.w600,
      color: AppColors.primary,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      fontFamily: AppFonts.lato,
      fontWeight: FontWeight.w400,
      color: AppColors.secondary,
    ),
    bodySmall: TextStyle(
      fontSize: 15,
      fontFamily: AppFonts.lato,
      fontWeight: FontWeight.w500,
      color: AppColors.secondaryVariant,
    ),
    labelLarge: TextStyle(
      fontSize: 15,
      fontFamily: AppFonts.lato,
      fontWeight: FontWeight.w600,
      color: AppColors.secondary,
    ),
    labelMedium: TextStyle(
      fontSize: 16,
      fontFamily: AppFonts.lato,
      fontWeight: FontWeight.w500,
      color: AppColors.secondary,
    ),
    labelSmall: TextStyle(
      fontSize: 13,
      fontFamily: AppFonts.lato,
      fontWeight: FontWeight.w500,
      color: AppColors.secondary,
    ),
    displaySmall: TextStyle(
      fontSize: 14,
      fontFamily: AppFonts.lato,
      fontWeight: FontWeight.w600,
      color: AppColors.secondary,
    ),
  );

  static final ThemeData themeData = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: Colors.white,
      secondary: AppColors.secondary,
      onSecondary: Colors.black,
      error: AppColors.error,
      onError: Colors.white,
      surface: AppColors.background,
      onSurface: Colors.white,
    ),
    textTheme: textTheme,
    fontFamily: AppFonts.lato,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.primary,
        padding: EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        textStyle: TextStyle(
          fontSize: 17,
          fontFamily: AppFonts.lato,
          fontWeight: FontWeight.w700,
          color: AppColors.black,
        ),
        minimumSize: Size(double.infinity, 50),
      ),
    ),
  );
}
