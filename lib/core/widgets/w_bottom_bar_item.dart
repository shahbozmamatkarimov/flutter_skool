import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resources/app_colors.dart';
import '../resources/styles.dart';

class WBottomBarItem extends StatelessWidget {
  final String icon;
  final String label;
  final GestureTapCallback onTap;
  final bool isActive;

  const WBottomBarItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isActive
        ? SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // SvgPicture.asset(
                    //   AppIcons.bottomBar,
                    //   width: 68,
                    // ),
                    Container(
                      color: Colors.red,
                    ),
                    Positioned(
                      top: 5,
                      left: 0,
                      right: 0,
                      child: _getElement(context),
                    ),
                  ],
                ),
              ],
            ),
          )
        : GestureDetector(
            onTap: onTap,
            behavior: HitTestBehavior.opaque,
            child: _getElement(context));
  }

  _getElement(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 50,
              height: 50,
              margin: isActive ? null : const EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(8),
              decoration: isActive
                  ? const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    )
                  : null,
              child: SvgPicture.asset(
                icon,
                width: 40,
                height: 40,
                colorFilter: ColorFilter.mode(
                  isActive ? Colors.black : AppColors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              label.toUpperCase(),
              style: Styles.getTextStyle(
                fontSize: 8,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      );
}
