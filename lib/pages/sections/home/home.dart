import 'package:flutter/material.dart';
import 'package:portfolio/pages/sections/home/widgets/left_home_section.dart';
import 'package:portfolio/pages/sections/home/widgets/right_home_section.dart';
import 'package:portfolio/utils/constants.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      child: ScreenSize.isMobile(context)
          ? Column(
              children: const [
                LeftIntro(),
                RightIntro(),
              ],
            )
          : Row(
              children: const [
                Expanded(
                  child: LeftIntro(),
                  flex: 3,
                ),
                Expanded(
                  child: RightIntro(),
                  flex: 2,
                ),
              ],
            ),
    );
  }
}
