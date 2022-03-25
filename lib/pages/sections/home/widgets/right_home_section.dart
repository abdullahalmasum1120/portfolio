import 'package:flutter/material.dart';
import 'package:portfolio/utils/assets.dart';

class RightIntro extends StatelessWidget {
  const RightIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: Image.asset(
        KImage.rightIntro,
        height: 500,
        width: 500,
      ),
    );
  }
}
