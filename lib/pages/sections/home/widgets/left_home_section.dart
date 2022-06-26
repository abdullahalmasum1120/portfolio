import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/pages/widgets/my_button.dart';
import 'package:portfolio/pages/widgets/my_icon.dart';
import 'package:portfolio/provider/user_provider.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class LeftIntro extends StatelessWidget {
  const LeftIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi there, I'm",
            style: ScreenSize.isMobile(context)
                ? Theme.of(context).textTheme.bodyMedium
                : Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 8.0,
          ),
          Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              return ref.watch(userProvider).when(
                  data: (data) {
                    return Text(
                      data.name ?? "",
                      style: ScreenSize.isMobile(context)
                          ? Theme.of(context).textTheme.titleMedium
                          : Theme.of(context).textTheme.titleLarge,
                    );
                  },
                  error: (err, trace) => const Text("username"),
                  loading: () => const SizedBox());
            },
          ),
          const SizedBox(
            height: 8.0,
          ),
          Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              return ref.watch(userProvider).when(
                  data: (data) {
                    List<TypewriterAnimatedText> animatedTexts =
                        <TypewriterAnimatedText>[];
                    for (String skill in data.titles!) {
                      animatedTexts.add(TypewriterAnimatedText(
                        skill,
                        textStyle: ScreenSize.isMobile(context)
                            ? Theme.of(context).textTheme.titleSmall
                            : Theme.of(context).textTheme.titleMedium,
                        speed: const Duration(milliseconds: 200),
                      ));
                    }
                    return AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: animatedTexts,
                    );
                  },
                  error: (error, trace) => const Text("subtitile here"),
                  loading: () => const SizedBox());
            },
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Android application developer with flutter,\n"
            "having experience with Native android",
            style: ScreenSize.isMobile(context)
                ? Theme.of(context).textTheme.bodySmall
                : Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  return ref.watch(userProvider).when(
                      data: (data) {
                        return MyIcon(
                          onTap: () => launch(data.socialLinks!.github ?? ""),
                          hoverColor: Colors.cyan,
                          color: Colors.black,
                          source: KIcons.github,
                        );
                      },
                      error: (err, trace) => const Text("github"),
                      loading: () => const SizedBox());
                },
              ),
              const SizedBox(
                width: 16,
              ),
              Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  return ref.watch(userProvider).when(
                      data: (data) {
                        return MyIcon(
                          onTap: () => launch(data.socialLinks!.linkedin ?? ""),
                          hoverColor: Colors.cyan,
                          color: Colors.black,
                          source: KIcons.linkedin,
                        );
                      },
                      error: (err, trace) => const Text("linkedin"),
                      loading: () => const SizedBox());
                },
              ),
              const SizedBox(
                width: 16,
              ),
              Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  return ref.watch(userProvider).when(
                      data: (data) {
                        return MyIcon(
                          onTap: () => launch(data.socialLinks!.whatsapp ?? ""),
                          hoverColor: Colors.cyan,
                          color: Colors.black,
                          source: KIcons.whatsapp,
                        );
                      },
                      error: (err, trace) => const Text("whatsapp"),
                      loading: () => const SizedBox());
                },
              ),
              const SizedBox(
                width: 16,
              ),
              Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  return ref.watch(userProvider).when(
                      data: (data) {
                        return MyIcon(
                          onTap: () => launch(data.socialLinks!.facebook ?? ""),
                          hoverColor: Colors.cyan,
                          color: Colors.black,
                          source: KIcons.facebook,
                        );
                      },
                      error: (err, trace) => const Text("facebook"),
                      loading: () => const SizedBox());
                },
              ),
            ],
          ),
          const SizedBox(
            height: 32.0,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  return ref.watch(userProvider).when(
                      data: (data) {
                        return MyButton(
                          onTap: () => launch(data.resume ?? ""),
                          text: "Download CV",
                          hoverColor: Colors.cyan,
                        );
                      },
                      error: (err, trace) => const Text("Resume download link"),
                      loading: () => const SizedBox());
                },
              ),
              const SizedBox(
                width: 8,
              ),
              Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  return ref.watch(userProvider).when(
                      data: (data) {
                        return MyButton(
                          onTap: () {
                            final Uri params = Uri(
                                scheme: 'mailto',
                                path: data.email,
                                queryParameters: {
                                  'subject': 'Your Subject here',
                                  'body': ''
                                });
                            String url = params.toString();
                            launch(url);
                          },
                          text: "Hire me",
                          hoverColor: Colors.cyan,
                        );
                      },
                      error: (err, trace) => const Text("Email Link"),
                      loading: () => const SizedBox());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
