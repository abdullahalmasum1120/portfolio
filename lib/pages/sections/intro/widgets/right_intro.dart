import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class RightIntro extends StatelessWidget {
  const RightIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.only(right: 32),
      // color: Colors.deepOrangeAccent,
      child: ResponsiveWrapper(
        backgroundColor: Colors.white,
        alignment: Alignment.topCenter,
        child: Image.asset(
          "assets/images/user_image.png"
        ),
        minWidth: 480,
      ),
    );
  }
}
