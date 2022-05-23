import 'package:flutter/material.dart';
import 'package:portfolio/pages/sections/footer/widgets/footer_item.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/theme.dart';
//
// class FooterSection extends StatelessWidget {
//   const FooterSection({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SliverToBoxAdapter(
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Text(
//                   "Contacts",
//                   style: MyTheme.largeTextStyle,
//                 ),
//               )
//             ],
//           ),
//           Container(
//             padding: const EdgeInsets.all(16.0),
//             width: double.infinity,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children:  [
//                 ResponsiveWrapper(
//                   maxWidth: 360,
//                   minWidth: 160,
//                   defaultScale: true,
//                   child: FooterItem(
//                     title: 'Location',
//                     subtitle: 'Mohammadpur, Dhaka',
//                     iconSrc: 'assets/icons/location.svg',
//                   ),
//                 ),
//                 ResponsiveWrapper(
//                   maxWidth: 360,
//                   minWidth: 160,
//                   defaultScale: true,
//                   child: FooterItem(
//                     title: 'Email',
//                     subtitle: 'abdullahalmasum1120@gmail.com',
//                     iconSrc: 'assets/icons/mail.svg',
//                   ),
//                 ),
//                 ResponsiveWrapper(
//                   maxWidth: 360,
//                   minWidth: 160,
//                   defaultScale: true,
//                   child: FooterItem(
//                     title: 'Phone',
//                     subtitle: '+8801538380773',
//                     iconSrc: 'assets/icons/phone.svg',
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             height: 80,
//             alignment: Alignment.center,
//             width: double.infinity,
//             color: KColors.primaryAccent,
//             child: Text(
//               "©All Rights Reserved by AAM",
//               style: MyTheme.smallTextStyle,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
