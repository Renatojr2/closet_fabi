import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  AppTheme(this.context);
  final BuildContext context;

  ThemeData get theme => ThemeData(
        primaryColor: AppColors.brandSecondary,
        accentColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.background,
        fontFamily: "ProximaNova",
        dividerColor: AppColors.dark100,
        dividerTheme: const DividerThemeData(
          indent: 0,
          endIndent: 0,
          space: 0,
        ),
        buttonTheme: const ButtonThemeData(
          height: 48,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6),
            ),
          ),
        ),
        appBarTheme: const AppBarTheme(
          brightness: Brightness.dark,
          elevation: 0,
          color: Colors.transparent,
        ),
        textSelectionColor: AppColors.primary,
        textSelectionHandleColor: AppColors.brandSecondary,
        colorScheme: const ColorScheme.dark().copyWith(
          primary: AppColors.brandSecondary,
          brightness: Brightness.dark,
          secondary: AppColors.primary,
          background: AppColors.dark900,
        ),
        brightness: Brightness.dark,
      );

  static const double horizontalPadding = 24;
  static const EdgeInsets defaultHorizontalPadding =
      EdgeInsets.symmetric(horizontal: 24);
}
