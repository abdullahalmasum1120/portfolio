import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/widgets/my_icon.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';
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
      child: Container(
        height: 240.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(widget.image),
            fit: BoxFit.cover,
            colorFilter: isHovered
                ? ColorFilter.mode(
                    KColors.black.withOpacity(0.5), BlendMode.darken)
                : null,
          ),
          border: Border.all(
            width: 4.0,
            color: KColors.secondary,
          ),
          borderRadius: BorderRadius.circular(16.0)
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: Constants.defaultTextStyle,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyIcon(
                    source: KIcons.github,
                    hoverColor: KColors.secondary,
                    onTap: (PointerEnterEvent event) =>
                        launch(widget.github, webOnlyWindowName: "_blank"),
                    color: KColors.black,
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  MyIcon(
                    source: KIcons.download,
                    hoverColor: KColors.secondary,
                    onTap: (PointerEnterEvent event) =>
                        launch(widget.downloadLink, webOnlyWindowName: "_blank"),
                    color: KColors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
