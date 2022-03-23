import 'package:flutter/material.dart';
import 'package:portfolio/pages/sections/expariences/experiences.dart';
import 'package:portfolio/pages/sections/header/widgets/drawer.dart';
import 'package:portfolio/pages/sections/footer/footer_section.dart';
import 'package:portfolio/pages/sections/header/navigation_header.dart';
import 'package:portfolio/pages/sections/home/home.dart';
import 'package:portfolio/pages/sections/project/project_section.dart';
import 'package:portfolio/pages/sections/skills/skills_section.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false,
      appBar: const NavigationHeader(),
      endDrawer: const MyDrawer(),
      body: ListView(
        children: const [
          HomeSection(),
          // SliverProjects(),
          // SliverSkills(),
          // // SliverExperiences(),
          // FooterSection(),
        ],
      ),
    );
  }
}
