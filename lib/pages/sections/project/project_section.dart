import 'package:flutter/material.dart';
import 'package:portfolio/pages/sections/project/widgets/project.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SliverProjects extends StatelessWidget {
  const SliverProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(48.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Projects",
                  style: Constants.largeTextStyle,
                )
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            ResponsiveRowColumn(
              layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              rowSpacing: 32.0,
              columnSpacing: 32.0,
              children: const [
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: Project(
                    image:
                        "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
                    github: "github",
                    downloadLink: "downloadLink",
                    name: "name",
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: Project(
                    image:
                        "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
                    github: "github",
                    downloadLink: "downloadLink",
                    name: "name",
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: Project(
                    image:
                        "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
                    github: "github",
                    downloadLink: "downloadLink",
                    name: "name",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
