import 'package:flutter/material.dart';


class Constants {
  static const FirebaseConfig firebaseConfig = FirebaseConfig();

  static const TextStyle titleTextStyle = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static const TextStyle defaultTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.5,
    color: Colors.white,
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
