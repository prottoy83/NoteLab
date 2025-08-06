import 'package:flutter/material.dart';
import 'package:notelab/themes/theme_scheme.dart';

final ThemeData lightMode = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: kPageBackground,
  colorScheme: const ColorScheme.light(
    brightness: Brightness.light,
    primary: kInkColor, // Ink is black
    onPrimary: kPageBackground, // for contrast
    secondary: kSecondaryLight,
    onSecondary: Colors.white,
    tertiary: kTertiaryLight,
    error: Colors.red,
    onError: Colors.white,
    surface: kPageBackground,
    onSurface: kInkColor,
  ),
);
