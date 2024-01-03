import 'package:flutter/material.dart';
import 'package:folioport/constants/color_constant.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ColorScheme currentColorScheme(context) =>
      Theme.of(context).colorScheme;

  // Body text themes
  static TextStyle getBodySmall(context) =>
      Theme.of(context).textTheme.bodySmall!;
  static TextStyle getBodyMedium(context) =>
      Theme.of(context).textTheme.bodyMedium!;
  static TextStyle getBodyLarge(context) =>
      Theme.of(context).textTheme.bodyLarge!;

  // Headline text styles
  static TextStyle getHeadlineSmall(context) =>
      Theme.of(context).textTheme.headlineSmall!;
  static TextStyle getHeadlineMedium(context) =>
      Theme.of(context).textTheme.headlineMedium!;
  static TextStyle getHeadlineLarge(context) =>
      Theme.of(context).textTheme.headlineLarge!;

  static TextTheme lightTextTheme = TextTheme(
      bodySmall: GoogleFonts.montserratAlternates(
          color: AppColors.primaryDark,
          fontSize: 20,
          fontWeight: FontWeight.normal),
      bodyMedium: GoogleFonts.montserratAlternates(
          color: AppColors.primaryDark,
          fontSize: 25,
          fontWeight: FontWeight.w700),
      bodyLarge: GoogleFonts.montserratAlternates(
          color: AppColors.primaryDark,
          fontSize: 40,
          fontWeight: FontWeight.w700),
      headlineLarge: GoogleFonts.montserratAlternates(
          color: AppColors.primaryDark,
          fontSize: 67,
          fontWeight: FontWeight.bold),
      headlineMedium: GoogleFonts.montserratAlternates(
          color: AppColors.primaryDark,
          fontSize: 40,
          fontWeight: FontWeight.w700));

  static TextTheme darkTextTheme = TextTheme(
      bodySmall: GoogleFonts.montserratAlternates(
          color: AppColors.primaryLight,
          fontSize: 20,
          fontWeight: FontWeight.normal),
      bodyMedium: GoogleFonts.montserratAlternates(
          color: AppColors.primaryLight,
          fontSize: 25,
          fontWeight: FontWeight.w700),
      bodyLarge: GoogleFonts.montserratAlternates(
          color: AppColors.primaryLight,
          fontSize: 40,
          fontWeight: FontWeight.w700),
      headlineLarge: GoogleFonts.montserratAlternates(
          color: AppColors.primaryLight,
          fontSize: 67,
          fontWeight: FontWeight.bold),
      headlineMedium: GoogleFonts.montserratAlternates(
          color: AppColors.primaryLight,
          fontSize: 40,
          fontWeight: FontWeight.w700));

  static ThemeData lightMode() {
    return ThemeData(
        scaffoldBackgroundColor: AppColors.primaryLight,
        textTheme: lightTextTheme,
        colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: AppColors.primaryLight,
            onPrimary: AppColors.primaryLight,
            secondary: AppColors.secondaryLight,
            onSecondary: AppColors.secondaryLight,
            error: Colors.red,
            onError: Colors.red,
            background: AppColors.primaryLight,
            onBackground: AppColors.primaryLight,
            surface: AppColors.secondaryLight,
            onSurface: AppColors.secondaryLight));
  }

  static ThemeData darkMode() {
    return ThemeData(
        scaffoldBackgroundColor: AppColors.primaryDark,
        textTheme: darkTextTheme,
        colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: AppColors.primaryDark,
            onPrimary: AppColors.primaryDark,
            secondary: AppColors.secondaryDark,
            onSecondary: AppColors.secondaryDark,
            error: Colors.red,
            onError: Colors.red,
            background: AppColors.primaryDark,
            onBackground: AppColors.primaryDark,
            surface: AppColors.secondaryDark,
            onSurface: AppColors.secondaryDark));
  }
}
