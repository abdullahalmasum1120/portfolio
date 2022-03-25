import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/widgets/my_icon.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class Project extends StatefulWidget {
  final String image;
  final String downloadLink;
  final String github;
  final String name;

  const Project({
    Key? key,
    required this.image,
    required this.github,
    required this.downloadLink,
    required this.name,
  }) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (PointerHoverEvent onHover) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (PointerExitEvent event) {
        setState(() {
          isHovered = false;
        });
      },
      child: AnimatedContainer(
        foregroundDecoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(widget.image),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              width: 4.0,
              color: KColors.secondary,
            ),
            borderRadius: BorderRadius.circular(16.0)),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(),
        duration: const Duration(milliseconds: 400),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity: isHovered ? 1 : 0,
              child: Visibility(
                visible: isHovered,
                maintainState: true,
                maintainAnimation: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: MyTheme.largeTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity: isHovered ? 1 : 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyIcon(
                    source: KIcons.github,
                    hoverColor: KColors.secondary,
                    onTap: () =>
                        launch(widget.github, webOnlyWindowName: "_blank"),
                    color: KColors.black,
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  MyIcon(
                    source: KIcons.download,
                    hoverColor: KColors.secondary,
                    onTap: () => launch(widget.downloadLink,
                        webOnlyWindowName: "_blank"),
                    color: KColors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
