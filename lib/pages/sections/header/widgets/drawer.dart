import 'package:flutter/material.dart';
import 'package:portfolio/pages/sections/header/widgets/header_item.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        children: [
          HeaderItem(
            text: "Home",
            onTap: () {},
            hoverColor: Colors.cyan,
          ),
          HeaderItem(
            text: "About Me",
            onTap: () {},
            hoverColor: Colors.cyan,
          ),
          HeaderItem(
            text: "Skills",
            onTap: () {},
            hoverColor: Colors.cyan,
          ),
        ],
      ),
    );
  }
}
