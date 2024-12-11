import 'package:flutter/material.dart';
import 'package:tickr/core/constants/color.dart';

class TTextTheme {
  TTextTheme._();

  // Light Theme Text Styles
  static TextTheme lightTextTheme = TextTheme(
    // Display
    displayLarge: const TextStyle().copyWith(
      fontSize: 64.0, // Large headlines for splash screens or main titles
      fontWeight: FontWeight.bold,
      color: TColors.black,
    ),
    displayMedium: const TextStyle().copyWith(
      fontSize: 48.0, // Section titles, like "Featured Games"
      fontWeight: FontWeight.w400,
      color: TColors.black,
    ),
    displaySmall: const TextStyle().copyWith(
      fontSize: 40.0, // Smaller section titles, like "New Arrivals"
      fontWeight: FontWeight.w400,
      color: TColors.black,
    ),

    // Headlines
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32.0, // Large headlines for splash screens or main titles
      fontWeight: FontWeight.bold,
      color: TColors.black,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 28.0, // Section titles, like "Featured Games"
      fontWeight: FontWeight.w600,
      color: TColors.black,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 24.0, // Smaller section titles, like "New Arrivals"
      fontWeight: FontWeight.w600,
      color: TColors.black,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 20.0, // Form titles or major UI elements like tabs
      fontWeight: FontWeight.w600,
      color: TColors.black,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 18.0, // Button labels, card titles
      fontWeight: FontWeight.w500,
      color: TColors.black,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16.0, // Smaller button text, secondary information
      fontWeight: FontWeight.w400,
      color: TColors.black,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 16.0, // Main body text for paragraphs or descriptions
      fontWeight: FontWeight.normal,
      color: TColors.black,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0, // Subtext or additional details
      fontWeight: FontWeight.normal,
      color: TColors.black,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 12.0, // Small details like captions or hints
      fontWeight: FontWeight.normal,
      color: TColors.black,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 14.0, // Labels for inputs or prominent buttons
      fontWeight: FontWeight.w500,
      color: TColors.black.withOpacity(0.7),
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0, // Supporting labels or secondary button text
      fontWeight: FontWeight.normal,
      color: TColors.black.withOpacity(0.5),
    ),
    labelSmall: const TextStyle().copyWith(
      fontSize: 10.0, // Microcopy like tooltips or small labels
      fontWeight: FontWeight.normal,
      color: TColors.black.withOpacity(0.5),
    ),
  );

  // Dark Theme Text Styles
  static TextTheme darkTextTheme = TextTheme(
    // Display
    displayLarge: const TextStyle().copyWith(
      fontSize: 64.0,
      fontWeight: FontWeight.bold,
      color: TColors.white,
    ),
    displayMedium: const TextStyle().copyWith(
      fontSize: 48.0,
      fontWeight: FontWeight.w400,
      color: TColors.white,
    ),
    displaySmall: const TextStyle().copyWith(
      fontSize: 40.0,
      fontWeight: FontWeight.w400,
      color: TColors.white,
    ),
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: TColors.white,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 28.0,
      fontWeight: FontWeight.w600,
      color: TColors.white,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: TColors.white,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: TColors.white,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: TColors.white,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: TColors.white,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      color: TColors.white,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: TColors.white,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: TColors.white,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: TColors.white.withOpacity(0.7),
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: TColors.white.withOpacity(0.5),
    ),
    labelSmall: const TextStyle().copyWith(
      fontSize: 10.0,
      fontWeight: FontWeight.normal,
      color: TColors.white.withOpacity(0.5),
    ),
  );
}
