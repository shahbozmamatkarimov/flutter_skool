import 'package:auto_route/auto_route.dart';
import 'package:skool/config/routes/route_path.dart';
import 'package:skool/core/widgets/w_circular_icon.dart';
import 'package:flutter/material.dart';

import '../resources/app_colors.dart';
import '../resources/app_icons.dart';
import 'w_profile_image.dart';

class WAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget leading;
  final bool isBordered;

  const WAppBar({
    Key? key,
    required this.leading,
    this.isBordered = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: isBordered
            ? Border(
                bottom: BorderSide(
                  color: AppColors.c_07.withOpacity(0.4),
                ),
              )
            : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leading,
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // context.router.pushNamed(RoutePath.notification);
                  },
                  child: const WCircularIcon(
                    color: AppColors.primaryColor,
                    icon: AppIcons.notification,
                  ),
                ),
                const SizedBox(width: 8),
                const WProfileImage(),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 80);
}
