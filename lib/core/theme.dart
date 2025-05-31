import 'package:flutter/material.dart';

class AppColors {
  // Background Colors
  static const Color background = Color(0xFF0F1115);
  static const Color backgroundDark = Color(0xFF121517);
  static const Color surface = Color(0xFF232A2E);

  // Text Colors
  static const Color textPrimary = Color(0xFFC4C4C4);
  static const Color textLight = Color(0xFFE5E5E5);
  static const Color textPurple = Color(0xFFCCC8FF);
  static const Color textPurpleLight = Color(0xFFCBC9FF);
  static const Color textMuted = Color(0xFF6F6E7C);

  // Accent Colors
  static const Color primary = Color(0xFF8B88EF);
  static const Color primaryLight = Color(0xFFB5B2FF);

  // Gradient Colors
  static const Color gradientBlack40 = Color.fromRGBO(0, 0, 0, 0.4);
  static const Color gradientBlack12 = Color.fromRGBO(0, 0, 0, 0.123);
  static const Color gradientBlack0 = Color.fromRGBO(0, 0, 0, 0.0);
  static const Color gradientBlack04 = Color.fromRGBO(0, 0, 0, 0.045);
  static const Color gradientBlack10 = Color.fromRGBO(0, 0, 0, 0.107);
  static const Color gradientBlack13 = Color.fromRGBO(0, 0, 0, 0.135);
  static const Color gradientBlack19 = Color.fromRGBO(0, 0, 0, 0.195);
  static const Color gradientBlack24 = Color.fromRGBO(0, 0, 0, 0.24);
}

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      canvasColor: AppColors.background,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        secondary: AppColors.primaryLight,
        background: AppColors.background,
        surface: AppColors.surface,
        onBackground: AppColors.textPrimary,
        onSurface: AppColors.textPrimary,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: AppColors.textPrimary),
        bodyMedium: TextStyle(color: AppColors.textPrimary),
        titleLarge: TextStyle(color: AppColors.textPurple),
      ),
    );
  }
}
