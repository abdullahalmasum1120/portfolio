import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class RightIntro extends StatelessWidget {
  const RightIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Image.asset("assets/images/user_image.png"),
      ),
    );
  }
}
