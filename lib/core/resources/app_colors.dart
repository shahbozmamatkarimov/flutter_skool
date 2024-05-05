import 'package:flutter/material.dart';

class AppColors {
  //General
  static const Color primaryColor = Color(0xFF027DFC);
  static const Color primaryColorAccent = Color(0xFFCDDEFC);
  static const Color primaryColorDark = Color(0xFF0059B5);

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color transparent = Colors.transparent;

  static const Color inputColor = Color(0xFFFFFFFF);
  static const Color backgroundColor = Color(0xFFFFFFFF);

  static const Color C999999 = Color(0xFF999999);
  static const Color C_CACACA = Color(0xFFCACACA);

  static const Color danger = Color(0xFFFF4D4D);
  static const Color removeColor = Color(0xFFFF002E);

  static const Color shimmerAnimate = Color(0xFF383838);
  static const Color shimmerAnimateLight = Color(0xFFDFDFDF);

  static const Color shimmerBack = Color(0xFF292929);
  static const Color shimmerBackLight = Color(0xFFFFFFFF);

  static Color getColorByName(String color) {
    switch (color.toUpperCase()) {
      case "BLUE":
        return const Color(0xFF0094FF);
      case "BLACK":
        return const Color(0xFF000000);
      case "PINK":
        return const Color(0xFFFF3C99);
      case "GREEN":
        return const Color(0xFF00FF57);
      case "RED":
        return const Color(0xFFFF002E);
      case "ORANGE":
        return const Color(0xFFFF9C40);
      case "YELLOW":
        return const Color(0xFFFFEC40);
      case "VIOLET":
        return const Color(0xFF9919D6);
      case "WHITE":
        return const Color(0xFFFFFFFF);
      case "GRAY":
        return const Color(0xFF939393);
    }

    return const Color(0xFFFFFFFF);
  }
}
