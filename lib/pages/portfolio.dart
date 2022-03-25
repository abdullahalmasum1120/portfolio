import 'package:flutter/material.dart';
import 'package:portfolio/pages/sections/expariences/experiences.dart';
import 'package:portfolio/pages/sections/header/widgets/drawer.dart';
import 'package:portfolio/pages/sections/footer/footer_section.dart';
import 'package:portfolio/pages/sections/header/navigation_header.dart';
import 'package:portfolio/pages/sections/home/home.dart';
import 'package:portfolio/pages/sections/project/project_section.dart';
import 'package:portfolio/pages/sections/skills/skills_section.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false,
      appBar: NavigationHeader(scrollController: _scrollController),
      endDrawer: MyDrawer(controller: _scrollController),
      body: ListView(
        controller: _scrollController,
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
