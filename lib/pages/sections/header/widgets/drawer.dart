import 'package:flutter/material.dart';
import 'package:portfolio/pages/sections/header/widgets/nav_item.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/colors.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        children: [
          NavItem(
            text: "Home",
            onTap: () {},
            hoverColor: Colors.cyan,
            iconSrc: KIcons.home,
          ),
          const Divider(
            color: KColors.white,
            thickness: 0.5,
          ),
          NavItem(
            text: "Projects",
            onTap: () {},
            hoverColor: Colors.cyan,
            iconSrc: KIcons.projects,
          ),
          const Divider(
            color: KColors.white,
            thickness: 0.5,
          ),
          NavItem(
            text: "Skills",
            onTap: () {},
            hoverColor: Colors.cyan,
            iconSrc: KIcons.skills,
          ),
          const Divider(
            color: KColors.white,
            thickness: 0.5,
          ),
          NavItem(
            text: "About me",
            onTap: () {},
            hoverColor: Colors.cyan,
            iconSrc: KIcons.about,
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
