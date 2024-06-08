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
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          margin: const EdgeInsets.only(bottom: 2),
          decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: scalingFactor.$2 * 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                  const SizedBox(width: 16),
                  SvgPicture.asset(
                    "assets/svg/icon/menu_arrow.svg",
                    width: 20,
                    height: 20,
                    color: AppColors.c_a1,
                  ),
                ],
              ),
              // SizedBox(height: scalingFactor.$1 * 6),
              // if (isBordered) ...{
              //   Divider(color: AppColors.c_07.withOpacity(0.4), thickness: 1),
              // },
            ],
          ),
        ));
  }
}
