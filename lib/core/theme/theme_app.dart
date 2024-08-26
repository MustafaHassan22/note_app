import 'package:flutter/material.dart';

ThemeData themeApp() {
  return ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 30,
      ),
    ),
  );
}
