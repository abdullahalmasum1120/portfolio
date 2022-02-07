import 'package:flutter/material.dart';
import 'package:portfolio/pages/sections/intro/widgets/left_intro.dart';
import 'package:portfolio/pages/sections/intro/widgets/right_intro.dart';
import 'package:responsive_framework/responsive_framework.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: double.infinity,
      height: MediaQuery.of(context).size.height - 56,
      child: ResponsiveRowColumn(
        layout: ResponsiveWrapper.of(context).isSmallerThan(MOBILE)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        children: /*TODO: problem using const here*/ [
          ResponsiveRowColumnItem(
            child: LeftIntro(),
            rowFlex: 1,
            columnFlex: 1,
          ),
          ResponsiveRowColumnItem(
            child: RightIntro(),
            rowFlex: 1,
            columnFlex: 2,
          ),
        ],
      ),
    );
  }
}




