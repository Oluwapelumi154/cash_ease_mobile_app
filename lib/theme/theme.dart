import 'package:cash_ease_mobile_app/theme/colors.dart';
import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
    fontFamily: 'ProductSans',
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primary,
        onPrimary: AppColors.white,
        secondary: AppColors.deepPrimary,
        onSecondary: AppColors.black,
        error: AppColors.red,
        onError: AppColors.white,
        surface: AppColors.white,
        onSurface: AppColors.white),
    scaffoldBackgroundColor: AppColors.primary,
    appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primary, foregroundColor: Colors.white),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
      titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ));
