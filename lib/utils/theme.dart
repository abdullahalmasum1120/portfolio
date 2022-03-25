import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/colors.dart';

class MyTheme {
  static AppBarTheme appBarTheme = AppBarTheme(
    color: KColors.primaryAccent,
    titleTextStyle: GoogleFonts.raleway(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.2,
      color: Colors.white,
    ),
    titleSpacing: 8.0,
  );
  static TextStyle xLargeTextStyle = GoogleFonts.raleway(
    fontSize: 48,
    fontWeight: FontWeight.w900,
    letterSpacing: 4.0,
    color: Colors.white,
  );
  static TextStyle largeTextStyle = GoogleFonts.raleway(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    letterSpacing: 2.5,
    color: Colors.white,
  );

  static TextStyle defaultTextStyle = GoogleFonts.raleway(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.2,
    color: Colors.white,
  );
  static TextStyle smallTextStyle = GoogleFonts.raleway(
    fontSize: 14,
    color: Colors.white,
    letterSpacing: 2.0,
  );
}