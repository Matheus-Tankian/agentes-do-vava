import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vava/src/core/app_colors.dart';

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
          color: AppColors.redGray,
          fontWeight: FontWeight.bold,
        ),
        titleSmall: GoogleFonts.poppins(
          fontSize: 14,
          color: AppColors.colorWhite,
          fontWeight: FontWeight.normal,
        ),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
