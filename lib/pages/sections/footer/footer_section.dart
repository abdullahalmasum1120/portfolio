import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/pages/sections/footer/widgets/footer_item.dart';
import 'package:responsive_framework/responsive_framework.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: ResponsiveRowColumn(
        layout: ResponsiveWrapper.of(context).isSmallerThan(MOBILE)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
        rowCrossAxisAlignment: CrossAxisAlignment.end,
        columnMainAxisAlignment: MainAxisAlignment.end,
        columnCrossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                FooterItem(
                  title: 'WhatsApp',
                  subtitle1: '+8801536411067',
                  subtitle2: '',
                  iconSrc: 'assets/icons/whatsapp.svg',
                ),
                FooterItem(
                  title: 'Location',
                  subtitle1: 'Mohammadpur, Dhaka',
                  subtitle2: 'Matiranga, Khagrachari',
                  iconSrc: 'assets/icons/location.svg',
                )
              ],
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                FooterItem(
                  title: 'Email',
                  subtitle1: 'abdullahalmasum1120@gmail.com',
                  subtitle2: 'abdullahalmasum7777@gmail.com',
                  iconSrc: 'assets/icons/mail.svg',
                ),
                FooterItem(
                  title: 'Phone',
                  subtitle1: '+8801538380773',
                  subtitle2: '+8801536411067',
                  iconSrc: 'assets/icons/phone.svg',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
