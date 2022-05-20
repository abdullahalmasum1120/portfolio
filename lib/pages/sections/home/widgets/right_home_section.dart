import 'package:flutter/material.dart';
import 'package:portfolio/utils/assets.dart';

class RightIntro extends StatelessWidget {
  const RightIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: Image.network(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgE0r2_a_Ju7-C7EHdJzHvBSatrHbbm_cALQ&usqp=CAU",
        height: 500,
        width: 500,
      ),
    );
  }
}
