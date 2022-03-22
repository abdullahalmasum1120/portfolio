import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/colors.dart';

class MyTheme {
  static const FirebaseConfig firebaseConfig = FirebaseConfig();
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

class FirebaseConfig {
  final String apiKey = "AIzaSyC662mcy0QDZATOUBfPpEs368PSybg5YRk";
  final String authDomain = "portfolio-affef.firebaseapp.com";
  final String projectId = "portfolio-affef";
  final String storageBucket = "portfolio-affef.appspot.com";
  final String messagingSenderId = "36511653386";
  final String appId = "1:36511653386:web:29073ad4d76c54ed7589f3";
  final String measurementId = "G-VDXH1QYDKZ";

  const FirebaseConfig();
}
