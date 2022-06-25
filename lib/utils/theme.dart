import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';

class MyTheme {
  static final AppBarTheme appBarTheme = AppBarTheme(
    color: KColors.primaryAccent,
    titleTextStyle: KTextStyle.titleSmall,
    titleSpacing: 8.0,
  );
  static final TextTheme textTheme = TextTheme(
    bodyLarge: KTextStyle.bodyLarge,
    bodyMedium: KTextStyle.bodyMedium,
    bodySmall: KTextStyle.bodySmall,
    titleLarge: KTextStyle.titleLarge,
    titleMedium: KTextStyle.titleMedium,
    titleSmall: KTextStyle.titleSmall,
  );
}
