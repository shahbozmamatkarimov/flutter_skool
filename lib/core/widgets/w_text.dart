import 'package:flutter/material.dart';
import '../../../core/resources/app_colors.dart';

class WText extends StatefulWidget {
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final String text;
  final int? maxLines;

  const WText({
    Key? key,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w400,
    this.color = AppColors.black,
    this.maxLines = null,
    required this.text,
  }) : super(key: key);

  @override
  State<WText> createState() => _WTextState();
}

class _WTextState extends State<WText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      maxLines: widget.maxLines,
      style: TextStyle(
        color: widget.color,
        fontSize: widget.fontSize,
        fontWeight: widget.fontWeight,
        height: 24 / 24,
      ),
    );
  }
}
