import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

class WLogo extends StatelessWidget {
  final double size;
  final Color color;
  final bool isDark;

  const WLogo({
    Key? key,
    this.size = 60,
    this.isDark = false,
    this.color = AppColors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "DLA",
      style: TextStyle(
        color: isDark ? AppColors.primaryColor : color,
        fontSize: size,
        fontFamily: 'Figtree',
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
