import 'package:skool/core/resources/styles.dart';
import 'package:flutter/material.dart';

class WPageTitle extends StatelessWidget {
  final String title;

  const WPageTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Styles.getTextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
