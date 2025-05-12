import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF17635B); // Deep green
  static const accent = Color(0xFFB2DFDB); // Light green
  static const textPrimary = Color(0xFF222222);
  static const textSecondary = Color(0xFF888888);
  static const background = Colors.white;
}

final ThemeData appTheme = ThemeData(
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.background,
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: AppColors.textPrimary,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
    bodyMedium: TextStyle(color: AppColors.textSecondary, fontSize: 16),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      // change text color to white
      foregroundColor: Colors.white,
      backgroundColor: AppColors.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      minimumSize: const Size.fromHeight(56),
      textStyle: const TextStyle(fontSize: 16),
    ),
  ),
);
