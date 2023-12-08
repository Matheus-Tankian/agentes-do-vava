import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themas {
  ThemeData get customTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.red,
        backgroundColor: const Color(0xFF0F1923),
      ),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.poppins(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: GoogleFonts.poppins(
          fontSize: 17,
          color: const Color(0xFFE55566),
          fontWeight: FontWeight.bold,
        ),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      // Add other theme properties as needed
    );
  }
}
