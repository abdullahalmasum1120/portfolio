import 'package:flutter/material.dart';

class SliverExperiences extends StatelessWidget {
  const SliverExperiences({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      color: Colors.amber,
    ));
  }
}
