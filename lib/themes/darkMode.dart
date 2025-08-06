import 'package:flutter/material.dart';
import 'package:notelab/themes/theme_scheme.dart';

final ThemeData darkMode = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: kPrimaryDark,
  colorScheme: const ColorScheme.dark(
    brightness: Brightness.dark,
    primary: kPrimaryDark,
    onPrimary: kOnPrimaryDark,
    secondary: Colors.grey,
    onSecondary: Colors.white,
    error: Colors.redAccent,
    onError: Colors.black,
    surface: kPrimaryDark,
    onSurface: Colors.white,
  ),
);
