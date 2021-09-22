import 'package:flutter/material.dart';

class ThemeConfig {
  static Color darkGrey = const Color(0xFF24282f);
  static Color mediumGrey = const Color(0xFF3c3e44);
  static Color lightGrey = const Color(0xFF9e9e9e);
  static Color textColor = Colors.white;

  static Color red = const Color(0xFFf74b55);
  static Color pink = const Color(0xFFde43ce);
  static Color blue = const Color(0xFF59bce7);
  static Color green = const Color(0xFF92c84a);
  static Color yellow = const Color(0xFFf9ff69);
  static Color orange = const Color(0xFFe07f33);

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
