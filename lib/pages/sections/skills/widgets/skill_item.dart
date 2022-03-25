import 'package:flutter/material.dart';

class SkillItem extends StatelessWidget {
  final int percentage;
  final String skill;

  const SkillItem({
    Key? key,
    required this.percentage,
    required this.skill,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: percentage,
          child: Container(
            padding: const EdgeInsets.only(left: 8.0),
            alignment: Alignment.centerLeft,
            height: 38.0,
            child: Text(
              skill,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Theme.of(context).scaffoldBackgroundColor),
            ),
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          // remaining (blank part)
          flex: 100 - percentage,
          child: const Divider(color: Colors.white),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Text(
          "$percentage%",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
