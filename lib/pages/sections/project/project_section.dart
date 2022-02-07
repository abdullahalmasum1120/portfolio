import 'package:flutter/material.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
    );
  }
}
