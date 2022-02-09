import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterItem extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String subtitle;

  const FooterItem({
    Key? key,
    required this.iconData,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(iconData),
            const SizedBox(
              width: 15.0,
            ),
            Text(
              title,
              style: GoogleFonts.raleway(
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
        Text(subtitle),
      ],
    );
  }
}
