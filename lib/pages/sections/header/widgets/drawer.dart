import 'package:flutter/material.dart';
import 'package:portfolio/pages/sections/header/widgets/nav_item.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/colors.dart';

class MyDrawer extends StatelessWidget {
  final ScrollController scrollController;

  const MyDrawer({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        children: [
          NavItem(
            text: "Home",
            onTap: () {
              Scaffold.of(context).closeEndDrawer();
              Future.delayed(
                const Duration(milliseconds: 500),
                () => scrollController.animateTo(
                  0.0,
                  duration: const Duration(seconds: 500),
                  curve: Curves.fastOutSlowIn,
                ),
              );
            },
            hoverColor: Colors.cyan,
            iconSrc: KImage.home,
          ),
          const Divider(
            color: KColors.white,
            thickness: 0.5,
          ),
          NavItem(
            text: "Projects",
            onTap: () {},
            hoverColor: Colors.cyan,
            iconSrc: KImage.projects,
          ),
          const Divider(
            color: KColors.white,
            thickness: 0.5,
          ),
          NavItem(
            text: "Skills",
            onTap: () {},
            hoverColor: Colors.cyan,
            iconSrc: KImage.skills,
          ),
          const Divider(
            color: KColors.white,
            thickness: 0.5,
          ),
          NavItem(
            text: "About me",
            onTap: () {},
            hoverColor: Colors.cyan,
            iconSrc: KImage.about,
          ),
          const Divider(
            color: KColors.white,
            thickness: 0.5,
          ),
        ],
      ),
    );
  }
}
