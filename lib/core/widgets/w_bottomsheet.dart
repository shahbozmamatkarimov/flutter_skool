import 'package:skool/core/widgets/w_close_button.dart';
import 'package:flutter/material.dart';

import '../resources/app_colors.dart';
import '../resources/styles.dart';

class WBottomSheet extends StatelessWidget {
  final String title;
  final Widget? prefix;
  final Widget? body;

  const WBottomSheet({
    Key? key,
    required this.title,
    this.body,
    this.prefix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 32),
          decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(32),
              topLeft: Radius.circular(32),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      if (prefix != null) ...{
                        prefix!,
                        const SizedBox(width: 12),
                      },
                      Text(
                        title,
                        style: Styles.getTextStyle(
                          fontSize: 20,
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  const WCloseButton(),
                ],
              ),
              const SizedBox(height: 16),
              if (body != null) ...{
                body!,
              },
            ],
          ),
        ),
      ],
    );
  }
}
