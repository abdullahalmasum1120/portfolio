import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/pages/sections/header/widgets/drawer_icon.dart';
import 'package:portfolio/pages/sections/header/widgets/header_item.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SliverHeader extends StatelessWidget {
  const SliverHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: KColors.primary,
      pinned: true,
      floating: true,
      automaticallyImplyLeading: false,
      title: Text(
        "Portfolio.",
        style: GoogleFonts.raleway(
          fontSize: 36,
          color: KColors.white,
          fontWeight: FontWeight.w800,
        ),
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
