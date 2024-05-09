import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/app_colors.dart';
import '../resources/styles.dart';

enum ButtonType { filled, outline }

class WButton extends StatefulWidget {
  final String text;
  final GestureTapCallback onTap;
  final Color color;
  final Color textColor;
  final double borderRadius;
  final bool showLoader;
  final double verticalPadding;
  final double horizontalPadding;
  final ButtonType buttonType;
  final Widget? child;
  final bool disabled;
  final TextStyle? textStyle;
  final EdgeInsets margin;
  final double fontSize;
  final FontWeight fontWeight;
  final MainAxisAlignment buttonPositionType;

  const WButton(
      {Key? key,
      required this.text,
      required this.onTap,
      this.color = AppColors.white,
      this.borderRadius = 10.0,
      this.showLoader = false,
      this.verticalPadding = 16,
      this.horizontalPadding = 16,
      this.buttonType = ButtonType.filled,
      this.child,
      this.disabled = false,
      this.textStyle,
      this.margin = EdgeInsets.zero,
      this.fontSize = 16,
      this.textColor = AppColors.black,
      this.fontWeight = FontWeight.w400,
      this.buttonPositionType = MainAxisAlignment.center})
      : super(key: key);

  @override
  State<WButton> createState() => _WButtonState();
}

class _WButtonState extends State<WButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.margin,
      child: GestureDetector(
        onTap: !widget.showLoader ? widget.onTap : null,
        onDoubleTap: widget.onTap,
        behavior: HitTestBehavior.opaque,
        child: MouseRegion(
          cursor: widget.disabled
              ? SystemMouseCursors.basic
              : SystemMouseCursors.click,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: widget.horizontalPadding,
              vertical: widget.verticalPadding,
            ),
            decoration: BoxDecoration(
              color: widget.buttonType == ButtonType.filled
                  ? (widget.disabled
                      ? widget.color.withOpacity(0.5)
                      : widget.color)
                  : AppColors.transparent,
              borderRadius: BorderRadius.circular(widget.borderRadius),
              border: widget.buttonType == ButtonType.filled
                  ? null
                  : Border.all(
                      color: (widget.disabled
                          ? widget.color.withOpacity(0.5)
                          : widget.color),
                      width: 1),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: widget.buttonPositionType,
              children: [
                if (!widget.showLoader) ...{
                  widget.child != null
                      ? widget.child!
                      : Text(
                          widget.text,
                          textAlign: TextAlign.center,
                          style: widget.textStyle ??
                              (widget.buttonType == ButtonType.filled
                                  ? Styles.getButtonStyle().copyWith(
                                      fontSize: widget.fontSize,
                                      color: widget.textColor,
                                      fontWeight: widget.fontWeight,
                                    )
                                  : Styles.getButtonStyle().copyWith(
                                      fontSize: 15,
                                      fontWeight: widget.fontWeight,
                                    )),
                        ),
                } else ...{
                  const CupertinoActivityIndicator(
                    animating: true,
                  ),
                }
              ],
            ),
          ),
        ),
      ),
    );
  }
}
