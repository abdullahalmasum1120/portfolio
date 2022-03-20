import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/widgets/my_button.dart';
import 'package:portfolio/pages/widgets/my_icon.dart';
import 'package:portfolio/utils/constants.dart';

class LeftIntro extends StatelessWidget {
  const LeftIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi there, I'm",
              style: Constants.defaultTextStyle,
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              "Abdullah Al Masum",
              style: Constants.xLargeTextStyle,
            ),
            const SizedBox(
              height: 16.0,
            ),
            AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                TyperAnimatedText(
                  "Android &",
                  textStyle: Constants.largeTextStyle,
                  speed: const Duration(milliseconds: 100),
                ),
                TyperAnimatedText(
                  "Flutter Developer",
                  textStyle: Constants.largeTextStyle,
                  speed: const Duration(milliseconds: 100),
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              "Android application developer with flutter,\n"
              "having experience with Native android",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MyIcon(
                  onTap: (PointerEnterEvent event) {},
                  hoverColor: Colors.cyan,
                  color: Colors.black,
                  source: 'assets/icons/github.svg',
                ),
                const SizedBox(
                  width: 16,
                ),
                MyIcon(
                  onTap: (PointerEnterEvent event) {},
                  hoverColor: Colors.cyan,
                  color: Colors.black,
                  source: 'assets/icons/linkedin.svg',
                ),
                const SizedBox(
                  width: 16,
                ),
                MyIcon(
                  onTap: (PointerEnterEvent event) {},
                  hoverColor: Colors.cyan,
                  color: Colors.black,
                  source: 'assets/icons/mail.svg',
                ),
                const SizedBox(
                  width: 16,
                ),
                MyIcon(
                  onTap: (PointerEnterEvent event) {},
                  hoverColor: Colors.cyan,
                  color: Colors.black,
                  source: 'assets/icons/facebook.svg',
                ),
              ],
            ),
            const SizedBox(
              height: 32.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MyButton(
                  onTap: (PointerEnterEvent event) {},
                  text: "Download CV",
                  hoverColor: Colors.cyan,
                ),
                const SizedBox(
                  width: 8,
                ),
                MyButton(
                  onTap: (PointerEnterEvent event) {},
                  text: "Hire me",
                  hoverColor: Colors.cyan,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
