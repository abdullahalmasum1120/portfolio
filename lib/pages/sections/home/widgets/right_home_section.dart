import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/utils/assets.dart';

class RightIntro extends StatelessWidget {
  const RightIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: SvgPicture.asset(
        KIcons.rightIntro,
        height: 400,
        width: 400,
      ),
    );
  }
}
