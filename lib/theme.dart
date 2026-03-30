import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF2F3E46);
  static const accent = Color(0xFF6B8797);
  static const accentLight = Color(0xFF87A0AE);
  static const surface = Color(0xFFF8F5F0);
  static const card = Colors.white;
  static const textPrimary = Color(0xFF25333A);
  static const textSecondary = Color(0xFF52626D);
  static const textMuted = Color(0xFF74838D);
  static const textFaint = Color(0xFFA5B0B7);
  static const divider = Color(0xFFE6E0D8);
  static const accentSurface = Color(0xFFF1ECE4);

  static const heroGradient = [
    Color(0xFF4C6471),
    Color(0xFF7B909B),
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
