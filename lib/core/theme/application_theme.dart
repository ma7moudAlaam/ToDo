import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF5D9CEC),
          primary: const Color(0xFF5D9CEC),
          background: const Color(0xFFDFECDB),
          primaryContainer: const Color(0xFFEC4B4B)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(
          color: Color(0xFF5D9CEC),
        ),
        selectedItemColor: Color(0xFF5D9CEC),
      ),
      textTheme: TextTheme(
          titleLarge: GoogleFonts.poppins(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          bodyMedium: GoogleFonts.poppins(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          bodySmall: GoogleFonts.poppins(fontSize: 12, color: Colors.white)));
}
