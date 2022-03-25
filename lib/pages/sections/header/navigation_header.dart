import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/pages/sections/header/widgets/nav_item.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

class NavigationHeader extends StatelessWidget implements PreferredSizeWidget {
  final ScrollController scrollController;

  const NavigationHeader({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: kIsWeb ? null : SvgPicture.asset(KIcons.avatar),
      ),
      title: Text(
        "Portfolio",
        style: MyTheme.defaultTextStyle,
      ),
      actions: [
        ResponsiveVisibility(
          visible: true,
          hiddenWhen: const [Condition.smallerThan(name: MOBILE)],
          child: NavItem(
            text: "Home",
            onTap: () => scrollController.animateTo(
              0.0,
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
            ),
            hoverColor: Colors.cyan,
          ),
        ),
        ResponsiveVisibility(
          visible: true,
          hiddenWhen: const [Condition.smallerThan(name: MOBILE)],
          child: NavItem(
            text: "Projects",
            onTap: () {},
            hoverColor: Colors.cyan,
          ),
        ),
        ResponsiveVisibility(
          visible: true,
          hiddenWhen: const [Condition.smallerThan(name: MOBILE)],
          child: NavItem(
            text: "Skills",
            onTap: () {},
            hoverColor: Colors.cyan,
          ),
        ),
        ResponsiveVisibility(
          visible: true,
          hiddenWhen: const [Condition.smallerThan(name: MOBILE)],
          child: NavItem(
            text: "About me",
            onTap: () {},
            hoverColor: Colors.cyan,
          ),
        ),
        ResponsiveVisibility(
          visible: false,
          visibleWhen: const [Condition.smallerThan(name: MOBILE)],
          child: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
