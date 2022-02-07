import 'package:flutter/material.dart';
import 'package:portfolio/pages/sections/header/widgets/drawer.dart';
import 'package:portfolio/pages/sections/footer/footer_section.dart';
import 'package:portfolio/pages/sections/header/header_section.dart';
import 'package:portfolio/pages/sections/intro/intro_section.dart';
import 'package:portfolio/pages/sections/project/project_section.dart';
import 'package:portfolio/pages/sections/skills/skills_section.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false,
      endDrawer: const MyDrawer(),
      body: ListView(
        children: const [
          HeaderSection(),
          IntroSection(),
          SkillsSection(),
          ProjectSection(),
          FooterSection(),
        ],
      ),
    );
  }
}
