import 'package:flutter/cupertino.dart';

abstract class UiUtils {
  UiUtils._();

  static void unfocus(BuildContext context) {
    final currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) currentFocus.unfocus();
  }
}