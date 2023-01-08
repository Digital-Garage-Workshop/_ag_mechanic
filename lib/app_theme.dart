import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme([ColorScheme? colorScheme]) {
    ColorScheme scheme = colorScheme ??
        ColorScheme.fromSeed(
          seedColor: Colors.blue,
        );

    return ThemeData(colorScheme: scheme);
  }

  static ThemeData darkTheme([ColorScheme? colorScheme]) {
    ColorScheme scheme = colorScheme ??
        ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: Colors.blue,
        );

    return ThemeData(colorScheme: scheme);
  }
}
