import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resources/app_icons.dart';

class WCloseButton extends StatelessWidget {
  final GestureTapCallback? onTap;
  final double size;

  const WCloseButton({
    Key? key,
    this.onTap,
    this.size = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ??
          () {
            Navigator.of(context).pop();
          },
      behavior: HitTestBehavior.opaque,
      child: SvgPicture.asset(
        AppIcons.close,
        width: size,
        height: size,
      ),
    );
  }
}
