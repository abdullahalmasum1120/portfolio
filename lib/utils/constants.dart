import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  static const FirebaseConfig firebaseConfig = FirebaseConfig();

  static TextStyle largeTextStyle = GoogleFonts.raleway(
    fontSize: 48,
    fontWeight: FontWeight.w900,
    letterSpacing: 2.0,
    color: Colors.white,
  );
  static TextStyle defaultTextStyle = GoogleFonts.raleway(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.5,
    color: Colors.white,
  );
  static TextStyle smallTextStyle = GoogleFonts.raleway(
    fontSize: 14,
    color: Colors.white,
    letterSpacing: 1.5,
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
