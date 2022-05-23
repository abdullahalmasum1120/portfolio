import 'package:flutter/material.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:rive/rive.dart';

class RightIntro extends StatelessWidget {
  const RightIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(16.0),
      child: const RiveAnimation.asset(
        KRivesAnim.rigntIntro,
        fit: BoxFit.contain,
      ),
    );
  }
}
