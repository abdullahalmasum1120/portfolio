import 'package:flutter/material.dart';
import 'package:portfolio/pages/sections/skills/widgets/skill_item.dart';
import 'package:portfolio/utils/theme.dart';

class SliverSkills extends StatelessWidget {
  const SliverSkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Skills",
              style: MyTheme.largeTextStyle,
            ),
            const SizedBox(
              height: 80,
            ),
            const SkillItem(
              percentage: 70,
              skill: "Flutter",
            ),
            const SizedBox(
              height: 32,
            ),
            const SkillItem(
              percentage: 90,
              skill: "Dart",
            ),
            const SizedBox(
              height: 32,
            ),
            const SkillItem(
              percentage: 60,
              skill: "Java",
            ),
            const SizedBox(
              height: 32,
            ),
            const SkillItem(
              percentage: 70,
              skill: "HTML",
            ),
            const SizedBox(
              height: 32,
            ),
            const SkillItem(
              percentage: 75,
              skill: "Java",
            ),
          ],
        ),
      ),
    );
  }
}
