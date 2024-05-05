import 'package:flutter/cupertino.dart';

import 'app_colors.dart';

abstract class Styles {
  Styles._();

  static TextStyle getActionCardTextStyle() => const TextStyle(
        fontSize: 20,
        color: AppColors.primaryColorAccent,
        fontWeight: FontWeight.w500,
        fontFamily: "Figtree",
      );

  static TextStyle getButtonStyle() => const TextStyle(
        color: AppColors.black,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: "Figtree",
      );

  static TextStyle getTextStyle({
    Color color = AppColors.black,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w400,
    double? letterSpacing,
    double? height,
  }) =>
      TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: "Figtree",
        letterSpacing: letterSpacing,
        height: height,
      );
}
