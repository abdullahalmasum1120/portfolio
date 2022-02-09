import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterItem extends StatelessWidget {
  final String iconSrc;
  final String title;
  final String subtitle1;
  final String subtitle2;

  const FooterItem({
    Key? key,
    required this.iconSrc,
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              iconSrc,
              width: 25.0,
              height: 25.0,
              color: Colors.green[900],
            ),
            const SizedBox(
              width: 15.0,
            ),
            Text(
              title,
              style: GoogleFonts.oswald(
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15.0,
        ),
        RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
            children: [
              TextSpan(
                text: "$subtitle1\n",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: "$subtitle2\n",
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        )
      ],
    );
  }
}
