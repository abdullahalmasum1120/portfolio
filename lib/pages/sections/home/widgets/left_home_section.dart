import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/widgets/my_button.dart';
import 'package:portfolio/pages/widgets/my_icon.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class LeftIntro extends StatelessWidget {
  const LeftIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi there, I'm",
            style: MyTheme.defaultTextStyle,
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            "Abdullah Al Masum",
            style: MyTheme.xLargeTextStyle,
          ),
          const SizedBox(
            height: 8.0,
          ),
          AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              TyperAnimatedText(
                "Android &",
                textStyle: MyTheme.largeTextStyle,
                speed: const Duration(milliseconds: 100),
              ),
              TyperAnimatedText(
                "Flutter Developer",
                textStyle: MyTheme.largeTextStyle,
                speed: const Duration(milliseconds: 100),
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
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
                onTap: () => launch("https://github.com/abdullahalmasum1120"),
                hoverColor: Colors.cyan,
                color: Colors.black,
                source: KIcons.github,
              ),
              const SizedBox(
                width: 16,
              ),
              MyIcon(
                onTap: () =>
                    launch("https://www.linkedin.com/in/abdullahalmasum1120"),
                hoverColor: Colors.cyan,
                color: Colors.black,
                source: KIcons.linkedin,
              ),
              const SizedBox(
                width: 16,
              ),
              MyIcon(
                onTap: () => launch(
                    "https://api.whatsapp.com/send/?phone=(8801538380773)"),
                hoverColor: Colors.cyan,
                color: Colors.black,
                source: KIcons.whatsapp,
              ),
              const SizedBox(
                width: 16,
              ),
              MyIcon(
                onTap: () {
                  final Uri params = Uri(
                      scheme: 'mailto',
                      path: 'abdullahalmasum1120@gmail.com',
                      queryParameters: {
                        'subject': 'Your Subject here',
                        'body': ''
                      });
                  String url = params.toString();
                  launch(url);
                },
                hoverColor: Colors.cyan,
                color: Colors.black,
                source: KIcons.mail,
              ),
              const SizedBox(
                width: 16,
              ),
              MyIcon(
                onTap: () =>
                    launch("https://www.facebook.com/abdullahalmasum2000"),
                hoverColor: Colors.cyan,
                color: Colors.black,
                source: KIcons.facebook,
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
                onTap: () => launch(
                    "https://docs.google.com/document/d/1viS1lwt8uncswW8Fn8rcjTyk9LsBWIla/edit?usp=sharing&ouid=114457075196417031116&rtpof=true&sd=true"),
                text: "Download CV",
                hoverColor: Colors.cyan,
              ),
              const SizedBox(
                width: 8,
              ),
              MyButton(
                onTap: () {
                  final Uri params = Uri(
                      scheme: 'mailto',
                      path: 'abdullahalmasum1120@gmail.com',
                      queryParameters: {
                        'subject': 'Your Subject here',
                        'body': ''
                      });
                  String url = params.toString();
                  launch(url);
                },
                text: "Hire me",
                hoverColor: Colors.cyan,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
