import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../resources/app_colors.dart';

enum WShimmerMode { light, dark }

class WShimmerLoader extends StatelessWidget {
  final double width;
  final double height;
  final WShimmerMode shimmerMode;

  const WShimmerLoader({
    Key? key,
    this.width = 150,
    this.height = 16,
    this.shimmerMode = WShimmerMode.dark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: shimmerMode == WShimmerMode.dark
          ? AppColors.shimmerBack
          : AppColors.shimmerBackLight,
      highlightColor: shimmerMode == WShimmerMode.dark
          ? AppColors.shimmerAnimate
          : AppColors.shimmerAnimateLight,
      child: Container(
        width: width,
        height: height,
        color: Colors.black,
      ),
    );
  }
}
