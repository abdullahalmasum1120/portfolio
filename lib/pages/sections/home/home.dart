import 'package:flutter/material.dart';
import 'package:portfolio/pages/sections/home/widgets/left_home_section.dart';
import 'package:portfolio/pages/sections/home/widgets/right_home_section.dart';
import 'package:portfolio/utils/constants.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: ScreenSize.isMobile(context)
          ? const EdgeInsets.all(16.0)
          : const EdgeInsets.all(24.0),
      width: double.infinity,
      height: ScreenSize.isMobile(context) ? size.height * 1.2 : size.height,
      child: Flex(
        direction:
            ScreenSize.isDesktop(context) ? Axis.horizontal : Axis.vertical,
        children: const [
          Flexible(
            child: LeftIntro(),
            flex: 4,
          ),
          Flexible(
            child: RightIntro(),
            flex: 3,
          ),
        ],
      ),
    );
  }
}
