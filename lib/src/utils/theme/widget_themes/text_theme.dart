import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
      displayMedium: GoogleFonts.alatsi(
        color: Colors.black,
      ),
      titleSmall: GoogleFonts.poppins(
        color: Colors.black38,
        fontSize: 24,
      ),
      titleMedium: GoogleFonts.poppins(
        color: Colors.black38,
        fontSize: 24,
      ));
  static TextTheme darkTextTheme = TextTheme(
    displayMedium: GoogleFonts.alatsi(
      color: Colors.white70,
    ),
    titleSmall: GoogleFonts.poppins(
      color: Colors.white60,
      fontSize: 24,
    ),
  );
}
