import 'package:flutter/material.dart';

class ThemeConfig {
  static Color darkGrey = const Color(0xFF24282f);
  static Color mediumGrey = const Color(0xFF3c3e44);
  static Color lightGrey = const Color(0xFF9e9e9e);
  static Color textColor = Colors.white;
  static Color red = Colors.red;
  static Color green = Colors.green;
  static Color yellow = Colors.yellow;

  static ThemeData appTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Rodchenko',
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontFamily: 'Rodchenko',
        fontSize: 20,
      ),
    ),
  );
}
