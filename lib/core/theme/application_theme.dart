import 'package:flutter/material.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF5D9CEC),
          primary: const Color(0xFF5D9CEC),
          background: const Color(0xFFDFECDB),
          primaryContainer: const Color(0xFFEC4B4B)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(
          color: Color(0xFF5D9CEC),
        ),

        selectedItemColor: Color(0xFF5D9CEC),
      ));
}
