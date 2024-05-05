import 'package:cached_network_image/cached_network_image.dart';
import 'package:skool/core/resources/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resources/app_colors.dart';
import '../resources/styles.dart';

class WUserItem extends StatelessWidget {
  final bool isPremium;

  const WUserItem({
    Key? key,
    this.isPremium = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: CachedNetworkImage(
            imageUrl: 'https://i.pravatar.cc/250?u=mail@ashallendesign.co.uk',
            width: 30,
            height: 30,
          ),
        ),
        const SizedBox(width: 12),
        Text(
          "Eric Egan",
          style: Styles.getTextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        if (isPremium) ...{
          const SizedBox(width: 8),
          SvgPicture.asset(
            AppIcons.star,
            width: 12,
            height: 12,
          )
        },
        const SizedBox(width: 8),
        Container(
          width: 6,
          height: 6,
          decoration: const BoxDecoration(
            color: AppColors.danger,
            shape: BoxShape.circle,
          ),
        )
      ],
    );
  }
}
