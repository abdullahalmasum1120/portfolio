import 'package:flutter/material.dart';
import 'package:portfolio/pages/sections/header/widgets/drawer_icon.dart';
import 'package:portfolio/pages/sections/header/widgets/header_item.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 24),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
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
              text: "About me",
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
            visible: false,
            visibleWhen: const [Condition.smallerThan(name: MOBILE)],
            child: DrawerIcon(
              hoverColor: Colors.cyan,
              onTap: () => Scaffold.of(context).openEndDrawer(),
            ),
          ),
        ],
      ),
    );
  }
}