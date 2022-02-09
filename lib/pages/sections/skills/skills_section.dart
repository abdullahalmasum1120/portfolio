import 'package:flutter/material.dart';
import 'package:portfolio/pages/sections/skills/widgets/skill_item.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            "Skills",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(
            height: 80,
          ),
          SkillItem(
            percentage: 90,
            skill: "Dart",
          ),
          SizedBox(
            height: 32,
          ),
          SkillItem(
            percentage: 70,
            skill: "HTML",
          ),
          SizedBox(
            height: 32,
          ),
          SkillItem(
            percentage: 70,
            skill: "Flutter",
          ),
          SizedBox(
            height: 32,
          ),
          SkillItem(
            percentage: 75,
            skill: "Java",
          ),
        ],
      ),
    );
  }
}
