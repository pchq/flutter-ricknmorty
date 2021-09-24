import 'package:flutter/material.dart';

class ThemeConfig {
  static const Color darkGrey = Color(0xFF24282f);
  static const Color mediumGrey = Color(0xFF3c3e44);
  static const Color lightGrey = Color(0xFF9e9e9e);
  static const Color textColor = Colors.white;

  static const Color red = Color(0xFFf74b55);
  static const Color pink = Color(0xFFde43ce);
  static const Color blue = Color(0xFF59bce7);
  static const Color green = Color(0xFF92c84a);
  static const Color yellow = Color(0xFFf9ff69);
  static const Color orange = Color(0xFFe07f33);

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
