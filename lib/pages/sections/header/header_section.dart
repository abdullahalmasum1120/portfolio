import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/pages/sections/header/widgets/drawer_icon.dart';
import 'package:portfolio/pages/sections/header/widgets/header_item.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SliverHeader extends StatelessWidget {
  const SliverHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: SvgPicture.asset(KIcons.avatar),
      ),
      title: Text(
        "Portfolio",
        style: MyTheme.defaultTextStyle,
      ),
      actions: [
        ResponsiveVisibility(
          visible: true,
          hiddenWhen: const [Condition.smallerThan(name: MOBILE)],
          child: HeaderItem(
            text: "Home",
            onTap: () {},
            hoverColor: Colors.cyan,
          ),
        ),
        ResponsiveVisibility(
          visible: true,
          hiddenWhen: const [Condition.smallerThan(name: MOBILE)],
          child: HeaderItem(
            text: "Projects",
            onTap: () {},
            hoverColor: Colors.cyan,
          ),
        ),
        ResponsiveVisibility(
          visible: true,
          hiddenWhen: const [Condition.smallerThan(name: MOBILE)],
          child: HeaderItem(
            text: "Skills",
            onTap: () {},
            hoverColor: Colors.cyan,
          ),
        ),
        ResponsiveVisibility(
          visible: true,
          hiddenWhen: const [Condition.smallerThan(name: MOBILE)],
          child: HeaderItem(
            text: "About me",
            onTap: () {},
            hoverColor: Colors.cyan,
          ),
        ),
        ResponsiveVisibility(
          visible: false,
          visibleWhen: const [Condition.smallerThan(name: MOBILE)],
          child: DrawerIcon(
            hoverColor: Colors.cyan,
            onTap: () => Scaffold.of(context).openEndDrawer(),
          ),
        ),
      ],
    );
  }
}
