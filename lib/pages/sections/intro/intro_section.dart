import 'package:flutter/material.dart';
import 'package:portfolio/pages/sections/intro/widgets/left_intro.dart';
import 'package:portfolio/pages/sections/intro/widgets/right_intro.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SliverIntro extends StatelessWidget {
  const SliverIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ResponsiveRowColumn(
        layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        children: const [
          ResponsiveRowColumnItem(
            child: LeftIntro(),
            rowFlex: 1,
          ),
          ResponsiveRowColumnItem(
            child: RightIntro(),
            rowFlex: 1,
          ),
        ],
      ),
    );
  }
}
