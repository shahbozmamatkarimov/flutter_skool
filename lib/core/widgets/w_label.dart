import 'package:flutter/material.dart';

import '../resources/app_colors.dart';
import '../resources/styles.dart';

class WLabel extends StatelessWidget {
  final String label;
  final EdgeInsets? padding;

  const WLabel({
    Key? key,
    required this.label,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(bottom: 4),
      child: Text(
        label.toUpperCase(),
        style: Styles.getTextStyle(
          color: AppColors.black,
          fontSize: 11,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
