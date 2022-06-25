import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FirebaseConfig {
  static const String apiKey = "AIzaSyC662mcy0QDZATOUBfPpEs368PSybg5YRk";
  static const String authDomain = "portfolio-affef.firebaseapp.com";
  static const String projectId = "portfolio-affef";
  static const String storageBucket = "portfolio-affef.appspot.com";
  static const String messagingSenderId = "36511653386";
  static const String appId = "1:36511653386:web:29073ad4d76c54ed7589f3";
  static const String measurementId = "G-VDXH1QYDKZ";
}

abstract class ScreenSize {
  static bool isMobile(BuildContext context) {
    if (MediaQuery.of(context).size.width < 800) return true;
    return false;
  }

  static bool isTablet(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1000) return true;
    return false;
  }

  static bool isDesktop(BuildContext context) {
    if (MediaQuery.of(context).size.width > 1000) return true;
    return false;
  }
}

final TextStyle _textStyle = GoogleFonts.raleway(
  color: Colors.white,
);

abstract class KTextStyle {
  static final TextStyle titleLarge = _textStyle.copyWith(
    fontSize: 36,
    fontWeight: FontWeight.w900,
    letterSpacing: 2,
  );
  static final TextStyle titleMedium = _textStyle.copyWith(
    fontSize: 28,
    fontWeight: FontWeight.w800,
    letterSpacing: 2,
  );
  static final TextStyle titleSmall = _textStyle.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    letterSpacing: 2,
  );
  static final TextStyle bodyLarge = _textStyle.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    letterSpacing: 1.2,
  );
  static final TextStyle bodyMedium = _textStyle.copyWith(
    fontSize: 16,
    letterSpacing: 1.2,
    fontWeight: FontWeight.normal,
  );
  static final TextStyle bodySmall = _textStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );
}
