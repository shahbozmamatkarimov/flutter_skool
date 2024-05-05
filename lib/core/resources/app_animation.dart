import 'package:flutter/material.dart';

abstract class AppAnimation {
  static Animation<Offset> slideBottomToTopAnimation(
          AnimationController animationController) =>
      Tween<Offset>(begin: const Offset(0.0, 0.2), end: const Offset(0.0, 0.0))
          .animate(CurvedAnimation(
              parent: animationController, curve: Curves.easeInOut));

  static Animation<Offset> slideRightToLeftAnimation(
          AnimationController animationController) =>
      Tween<Offset>(begin: const Offset(1.0, 0.0), end: const Offset(0.0, 0.0))
          .animate(CurvedAnimation(
              parent: animationController, curve: Curves.easeInOut));
}
