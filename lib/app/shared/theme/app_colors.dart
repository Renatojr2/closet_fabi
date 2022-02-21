import 'package:flutter/material.dart';

class AppColors {
  static const Color dark900 = Color(0xFF000000);
  static const Color dark800 = Color(0xFF0F1116);
  static const Color dark700 = Color(0xFF202227);
  static const Color dark600 = Color(0xFF313338);
  static const Color dark500 = Color(0xFF424449);
  static const Color dark400 = Color(0xFF53555A);
  static const Color dark300 = Color(0xFF64666B);
  static const Color dark200 = Color(0xFF75777C);
  static const Color dark100 = Color(0xFF86888D);
  static const Color dark50 = Color(0xFFCCCCCC);

  static const Color primary = Color(0xFFf18a9b);
  static const Color brandSecondary = Color(0xFF00E7F9);
  static const LinearGradient brandGradient = LinearGradient(
    colors: [primary, brandSecondary],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const Color grey100 = Color(0xFFEEEEEE);
  static const Color errorColor = Color(0xFFB00020);
  static const Color redErrorColor = Color(0xFFCF6679);
  static const Color background = Color(0xFFFFFFFF);
}
