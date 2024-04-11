import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme textTheme = TextTheme(
  displayLarge: GoogleFonts.poppins(
    fontSize: 32,
    fontWeight: FontWeight.w700,
  ),
  displayMedium: GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.w700,
  ),
  titleMedium: GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  ),
  titleSmall: GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  ),
  bodyLarge: GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  ),
  bodyMedium: GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
  bodySmall: GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  ),
).apply(
  displayColor: Colors.black,
  bodyColor: Colors.black,
);
