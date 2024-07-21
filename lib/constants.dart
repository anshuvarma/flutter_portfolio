import 'dart:core';

import 'package:flutter/material.dart';

class AppColors {
  static final Color cardShadowColor = Colors.cyan.shade100;
  static const Color appBarBackgroundColor = Color.fromARGB(221, 13, 12, 12);
  static const Color fontColor = Colors.white;
  static const Color subFontColor = Colors.white70;
  static const Color cardBackgroundColor = Color.fromARGB(221, 7, 6, 6);
  static const Color pageBackgroundColor = Color.fromARGB(221, 13, 12, 12);

  static const TextStyle heading = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w400,
    color: fontColor,
  );

  static const TextStyle subHeading = TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.w300,
    color: subFontColor,
  );

  static const TextStyle cardTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: fontColor,
  );
}
