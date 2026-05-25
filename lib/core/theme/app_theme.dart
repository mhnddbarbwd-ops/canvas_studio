import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.primaryBackground,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.toolbarBackground,
      elevation: 0,
    ),
    iconTheme: const IconThemeData(color: AppColors.iconColor),
  );
}