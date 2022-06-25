import 'package:flutter/material.dart';
import 'package:portfolio/pages/sections/header/widgets/nav_item.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/theme.dart';

class NavigationHeader extends StatelessWidget implements PreferredSizeWidget {
  final ScrollController scrollController;

  const NavigationHeader({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: ScreenSize.isMobile(context)
          ? Container(
              padding: const EdgeInsets.only(left: 16.0),
            )
          : Container(
              padding: const EdgeInsets.only(left: 24.0),
            ),
      title: Text(
        "Portfolio",
        style: Theme.of(context).textTheme.titleSmall,
      ),
      actions: [
        Visibility(
          visible: !ScreenSize.isMobile(context),
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
        Visibility(
          visible: !ScreenSize.isMobile(context),
          child: NavItem(
            text: "Projects",
            onTap: () {},
            hoverColor: Colors.cyan,
          ),
        ),
        Visibility(
          visible: !ScreenSize.isMobile(context),
          child: NavItem(
            text: "Skills",
            onTap: () {},
            hoverColor: Colors.cyan,
          ),
        ),
        Visibility(
          visible: !ScreenSize.isMobile(context),
          child: NavItem(
            text: "About me",
            onTap: () {},
            hoverColor: Colors.cyan,
          ),
        ),
        Visibility(
          visible: ScreenSize.isMobile(context),
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
