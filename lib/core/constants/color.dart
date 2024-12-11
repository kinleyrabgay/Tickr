import 'package:flutter/material.dart';

class TColors {
  TColors._();

  // Linear gradient
  static const Gradient primaryGradient = LinearGradient(
    colors: [
      Color(0xFFFFFFFF),
      Color(0xFFEEE6FF),
      Color(0xFFFFE2CC),
      Color(0xFF83A4D4),
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    stops: [0, 0.2, 0.7, 1],
  );

  static const Gradient allTabGradient = LinearGradient(
    colors: [
      Color(0xFFFFC89F),
      Color(0xFFB28DFF),
    ],
    stops: [0, 1],
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
  );

  static const Gradient inProgressTabGradient = LinearGradient(
    colors: [
      Color(0xFF83A4D4),
      Color(0xFFB6FBFF),
    ],
    stops: [0, 1],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Gradient onHoldTabGradient = LinearGradient(
    colors: [
      Color(0xFFF4A261),
      Color(0xFFFFC8A2),
    ],
    stops: [0, 1],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static Gradient secondaryGradient = LinearGradient(
    colors: [
      Colors.white.withOpacity(0.7),
      Colors.grey.withOpacity(0.1),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  // Colors
  static const Color primary = Color(0xFFB28DFF);
  static const Color secondary = Color(0xFFFFC89F);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color grey = Color(0xFFC0C0C0);
  static const Color darkGrey = Color(0xFF808080);
  static const Color lightGrey = Color(0xFFC0C0C0);
  static const Color red = Color(0xFFFF0000);
  static const Color green = Color(0xFF00FF00);

  // Menu
  static const Color menuSelected = Color(0xFFCEB7FF);
}
