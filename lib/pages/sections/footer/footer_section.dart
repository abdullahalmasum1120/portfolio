import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/pages/sections/footer/widgets/footer_item.dart';
import 'package:responsive_framework/responsive_framework.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: ResponsiveRowColumn(
        layout: ResponsiveWrapper.of(context).isSmallerThan(MOBILE)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        children: [
          ResponsiveRowColumnItem(
            child: FooterItem(
              title: 'WhatsApp',
              subtitle: '+8801536411067',
              iconData: Icons.call,
            ),
          ),ResponsiveRowColumnItem(
            child: FooterItem(
              title: 'WhatsApp',
              subtitle: '+8801536411067',
              iconData: Icons.call,
            ),
          ),ResponsiveRowColumnItem(
            child: FooterItem(
              title: 'WhatsApp',
              subtitle: '+8801536411067',
              iconData: Icons.call,
            ),
          ),ResponsiveRowColumnItem(
            child: FooterItem(
              title: 'WhatsApp',
              subtitle: '+8801536411067',
              iconData: Icons.call,
            ),
          ),
        ],
      ),
    );
  }
}