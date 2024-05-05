import 'package:skool/core/resources/styles.dart';
import 'package:flutter/material.dart';

class WTitle extends StatelessWidget {
  final String title;

  const WTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Styles.getTextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
