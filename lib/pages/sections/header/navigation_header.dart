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
      leading: ScreenSize.isLarge(context) ?  Container():null,
      title: Text(
        "Portfolio",
        style: MyTheme.defaultTextStyle,
      ),
      actions: [
        Visibility(
          visible: !ScreenSize.isSmall(context),
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
          visible: !ScreenSize.isSmall(context),
          child: NavItem(
            text: "Projects",
            onTap: () {},
            hoverColor: Colors.cyan,
          ),
        ),
        Visibility(
          visible: !ScreenSize.isSmall(context),
          child: NavItem(
            text: "Skills",
            onTap: () {},
            hoverColor: Colors.cyan,
          ),
        ),
        Visibility(
          visible: !ScreenSize.isSmall(context),
          child: NavItem(
            text: "About me",
            onTap: () {},
            hoverColor: Colors.cyan,
          ),
        ),
        Visibility(
          visible: ScreenSize.isSmall(context),
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
