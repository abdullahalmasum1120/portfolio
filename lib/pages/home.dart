import 'package:flutter/material.dart';
import 'package:portfolio/pages/sections/expariences/experiences.dart';
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
    return const Scaffold(
      endDrawerEnableOpenDragGesture: false,
      endDrawer: MyDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverHeader(),
          SliverIntro(),
          SliverProjects(),
          SliverSkills(),
          // SliverExperiences(),
          // FooterSection(),
        ],
      ),
    );
  }
}
