import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF1B2838);
  static const accent = Color(0xFF4A7C96);
  static const accentLight = Color(0xFF6A9AB5);
  static const surface = Color(0xFFF4F6F8);
  static const card = Colors.white;
  static const textPrimary = Color(0xFF1A2530);
  static const textSecondary = Color(0xFF445566);
  static const textMuted = Color(0xFF6B7D8D);
  static const textFaint = Color(0xFF9EAAB4);
  static const divider = Color(0xFFDFE4E9);
  static const accentSurface = Color(0xFFEBF1F5);

  static const heroGradient = [
    Color(0xFF1E3044),
    Color(0xFF3A5A72),
  ];
}

ThemeData buildAppTheme() {
  return ThemeData(
    useMaterial3: true,
    colorSchemeSeed: AppColors.accent,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.surface,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
    ),
    cardTheme: CardThemeData(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      color: AppColors.card,
    ),
    dividerTheme: const DividerThemeData(
      color: AppColors.divider,
      thickness: 1,
    ),
  );
}
