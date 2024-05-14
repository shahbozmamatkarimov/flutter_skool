import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/resources/styles.dart';
import '../../config/menu/menu_data.dart';
import '../resources/app_colors.dart';

class WMenuItem extends StatelessWidget {
  final MenuData menuData;
  final GestureTapCallback onTap;
  final (double, double) scalingFactor;
  final bool isBordered;

  const WMenuItem({
    Key? key,
    required this.menuData,
    required this.onTap,
    required this.scalingFactor,
    this.isBordered = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: scalingFactor.$2 * 6),
          Row(
            children: [
              SvgPicture.asset(
                menuData.icon,
                width: 24,
                height: 24,
                colorFilter: ColorFilter.mode(
                  menuData.isActive
                      ? AppColors.primaryColor
                      : const Color(0xFF3D3D3D),
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Text(
                  menuData.text,
                  style: Styles.getTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: menuData.isActive
                        ? AppColors.black
                        : const Color(0xFF3D3D3D),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: scalingFactor.$1 * 6),
          if (isBordered) ...{
            Divider(color: AppColors.c_07.withOpacity(0.4), thickness: 1),
          },
        ],
      ),
    );
  }
}
