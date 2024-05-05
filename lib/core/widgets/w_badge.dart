import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

class WBadge extends StatelessWidget {
  final Color color;
  final Widget child;
  const WBadge({
    Key? key,
    required this.child,
    this.color = AppColors.primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(30))),
      child: child,
    );
  }
}
