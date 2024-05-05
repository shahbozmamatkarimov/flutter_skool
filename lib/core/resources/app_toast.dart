import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

import 'app_colors.dart';
import 'styles.dart';

enum ToastType { success, error, info }

abstract class AppToast {
  static show({
    required BuildContext context,
    required String message,
    int? seconds,
    ToastType toastType = ToastType.info,
  }) {
    showToast(
      message,
      textStyle: Styles.getTextStyle(
        fontSize: 12,
      ),
      duration: Duration(seconds: seconds ?? 2),
      backgroundColor: toastType == ToastType.success
          ? AppColors.primaryColor
          : toastType == ToastType.error
              ? AppColors.danger
              : const Color(0xFF222222),
      context: context,
      borderRadius: BorderRadius.circular(30),
      shapeBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: const BorderSide(color: Color(0xFF666666), width: 1),
      ),
      animation: StyledToastAnimation.scale,
    );
  }
}
