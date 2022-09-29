import 'package:flutter/material.dart';
import 'package:splashapp/core/constants/AppColors.dart';
import 'package:splashapp/core/extansions/extansion.dart';

class LighTheme {
  final appcolors = AppColors();

  late ThemeData theme;

  LighTheme() {
    theme = ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.darkGreen,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
          ),
        ),
        scaffoldBackgroundColor: AppColors.white,
        buttonTheme: const ButtonThemeData(
            colorScheme: ColorScheme.light(onPrimary: AppColors.darkGreen, onSecondary: AppColors.white)),
        colorScheme: const ColorScheme.light(),
        textTheme: ThemeData.light().textTheme.copyWith(
            headline5: const TextStyle(color: AppColors.darkGreen, fontWeight: FontWeight.w600),
            subtitle1: const TextStyle(color: AppColors.darkGreen, fontWeight: FontWeight.w500)));
  }
}
