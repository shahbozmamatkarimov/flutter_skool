import 'package:flutter/material.dart';

import '../resources/app_colors.dart';
import '../resources/styles.dart';

class WTextLink extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final Color? color;
  final GestureTapCallback onTap;
  final double? fontSize;

  const WTextLink({
    Key? key,
    required this.text,
    required this.onTap,
    this.fontWeight,
    this.fontSize,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Text(
          text,
          style: Styles.getTextStyle(
            fontSize: fontSize ?? 14,
            fontWeight: fontWeight ?? FontWeight.w500,
            color: color ?? AppColors.C999999,
          ),
        ),
      ),
    );
  }
}
