import 'package:flutter/material.dart';
import 'package:portfolio/pages/sections/home/widgets/left_home_section.dart';
import 'package:portfolio/pages/sections/home/widgets/right_home_section.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      child: ResponsiveRowColumn(
        layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        children: const [
          ResponsiveRowColumnItem(
            child: LeftIntro(),
            rowFlex: 1,
            columnFlex: 2,
          ),
          ResponsiveRowColumnItem(
            child: RightIntro(),
            rowFlex: 1,
            columnFlex: 1,
          ),
        ],
      ),
    );
  }
}
