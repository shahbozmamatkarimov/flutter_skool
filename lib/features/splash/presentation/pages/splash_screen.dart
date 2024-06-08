import 'package:auto_route/auto_route.dart';
import 'package:skool/config/routes/route_path.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/resources/app_dimension.dart';
import 'package:skool/core/resources/app_images.dart';
import 'package:skool/core/widgets/w_logo.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with AppDimension {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      context.router.replaceNamed(RoutePath.main);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.primaryColor,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: scaleSize(80),
                width: double.infinity,
              ),
              WLogo(size: scaleSize(60)),
              SizedBox(height: scaleSize(52)),
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    AppImages.splash,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get size => MediaQuery.sizeOf(context);
}
