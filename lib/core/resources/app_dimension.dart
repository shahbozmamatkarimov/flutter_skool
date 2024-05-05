import 'dart:ui';

mixin AppDimension {
  double get windowWidth => size.width;
  double get windowHeight => size.height;

  Size get size;

  double designWidth = 390;
  double designHeight = 844;

  double scaleSize(double baseSize) {
    return baseSize * scalingFactor();
  }

  double scaleWidth(double baseSize) {
    return baseSize * scalingFactorWidth();
  }

  double scaleHeight(double baseSize) {
    return baseSize * scalingFactorHeight();
  }

  double scalingFactor() {
    double scalingFactor = (scalingFactorWidth() + scalingFactorHeight()) / 2;
    return scalingFactor;
  }

  double scalingFactorWidth() {
    return windowWidth / designWidth;
  }

  double scalingFactorHeight() {
    return windowHeight / designHeight;
  }
}
