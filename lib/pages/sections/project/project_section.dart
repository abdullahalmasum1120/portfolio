import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/sections/project/widgets/project.dart';
import 'package:portfolio/pages/widgets/section_header.dart';

class SliverProjects extends StatelessWidget {
  const SliverProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SectionHeader(name: "Projects"),
            const SizedBox(
              height: 48.0,
            ),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 0.4,
                aspectRatio: 4,
                enlargeCenterPage: true,
              ),
              items: const [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Project(
                    image:
                        "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
                    github: "github",
                    downloadLink: "downloadLink",
                    name: "Plasma",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Project(
                    image:
                        "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
                    github: "github",
                    downloadLink: "downloadLink",
                    name: "name",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
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
