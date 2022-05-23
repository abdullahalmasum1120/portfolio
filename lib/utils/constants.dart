import 'package:flutter/cupertino.dart';

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
  static bool isMobile(BuildContext context){
    if(MediaQuery.of(context).size.width<800) return true;
    return false;
  }
  static bool isTablet(BuildContext context){
    if(MediaQuery.of(context).size.width>800 && MediaQuery.of(context).size.width<1000) return true;
    return false;
  }
  static bool isDesktop(BuildContext context){
    if(MediaQuery.of(context).size.width>1000) return true;
    return false;
  }
}
