import 'package:flutter/material.dart';

import '../../../core/util/ui_utils.dart';

/// Allows to close soft keyboard and take away focus from selected input field of a child,
/// when user taps outside of an input field
/// {@category Widgets}
class Unfocus extends StatelessWidget {
  // Properties
  final Widget child;

  // Constructor
  /// Wrap around child to take away focus from from input field of a child,
  /// when user taps outside of an input field
  const Unfocus({Key? key, required this.child}) : super(key: key);

  // Functions
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        UiUtils.unfocus(context);
      },
      child: child,
    );
  }
}
