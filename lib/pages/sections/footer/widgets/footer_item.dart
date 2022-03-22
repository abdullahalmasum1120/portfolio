import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterItem extends StatelessWidget {
  final String iconSrc;
  final String title;
  final String subtitle;

  const FooterItem({
    Key? key,
    required this.iconSrc,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFF191918),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          SvgPicture.asset(
            iconSrc,
            width: 40.0,
            height: 40.0,
            color: Colors.green[900],
          ),
          const SizedBox(
            width: 16.0,
          ),
          Text(
            title,
            style: GoogleFonts.oswald(
              fontSize: 24.0,
              letterSpacing: 2.0,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
