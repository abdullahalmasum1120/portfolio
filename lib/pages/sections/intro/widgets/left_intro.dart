import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/my_button.dart';
import 'package:portfolio/utils/my_icon.dart';

class LeftIntro extends StatelessWidget {
  const LeftIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: double.infinity,
      // color: Colors.deepPurple,
      child: Container(
        // color: Colors.deepOrangeAccent,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Flutter Developer",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Abdullah Al Masum",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 8,
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
                SizedBox(width: 20,),
                MyIcon(
                  onTap: (PointerEnterEvent event) {},
                  hoverColor: Colors.cyan,
                  color: Colors.black,
                  source: 'assets/icons/linkedin.svg',
                ),
                SizedBox(width: 20,),
                MyIcon(
                  onTap: (PointerEnterEvent event) {},
                  hoverColor: Colors.cyan,
                  color: Colors.black,
                  source: 'assets/icons/mail.svg',
                ),
                SizedBox(width: 20,),
                MyIcon(
                  onTap: (PointerEnterEvent event) {},
                  hoverColor: Colors.cyan,
                  color: Colors.black,
                  source: 'assets/icons/facebook.svg',
                ),
              ],
            ),
            const SizedBox(
              height: 16,
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
