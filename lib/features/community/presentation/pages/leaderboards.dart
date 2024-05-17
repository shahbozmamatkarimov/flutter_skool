import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_textfield.dart';
import 'package:skool/core/widgets/w_user_avatar.dart';

class LeaderBoards extends StatelessWidget {
  LeaderBoards({super.key});

  final List<String> postIcons = ["link", "gif"];

  final TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(60.0), // Set your preferred height here
        child: AppBar(
          backgroundColor: AppColors.white,
          title: Row(
            children: [
              Image.asset("assets/image/logo.png"),
              const SizedBox(
                width: 12,
              ),
              const Text(
                "Skool community",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          leading: IconButton(
            icon: SvgPicture.asset(
                "assets/svg/icon/back_route.svg"), // Your custom icon here
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        height: 64,
        child: Row(
          children: [
            const CircleAvatar(
              radius: 20, // Set the radius of the circle
              backgroundImage: NetworkImage(
                'https://picsum.photos/250?image=9',
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 40,
                        child: WTextField(
                          controller: commentController,
                          borderColor: AppColors.white,
                          hint: "Your comment",
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        for (String icon in postIcons)
                          WButton(
                            text: "",
                            horizontalPadding: 12,
                            verticalPadding: 12,
                            onTap: () => {},
                            child: SvgPicture.asset(
                              "assets/svg/post/$icon.svg",
                              width: 14,
                              height: 14,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: AppColors.white, borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset("assets/svg/icon/settings.svg"),
                  const SizedBox(
                    height: 160,
                    width: 160,
                    child: CircularProgressIndicator(
                      color: AppColors.c_2a,
                      strokeWidth: 11,
                      backgroundColor: AppColors.c_f0,
                      value: 0.1,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class MyCircularProgressIndicator extends CustomPainter {
//   final double strokeWidth;
//   final double radius;
//   final Color backgroundColor;
//   final Color foregroundColor;
//   final double value;

//   const MyCircularProgressIndicator({
//     required this.strokeWidth,
//     required this.radius,
//     required this.backgroundColor,
//     required this.foregroundColor,
//     required this.value,
//   });

//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = backgroundColor
//       ..strokeWidth = strokeWidth
//       ..style = PaintingStyle.stroke;

//     final circlePath = Path()
//       ..addArc(Rect.fromCenter(center: Offset(size.width / 2, size.height / 2), radius: radius), 0, 2 * pi * value);

//     canvas.drawCircle(Offset(size.width / 2, size.height / 2), radius, paint);
//     canvas.drawPath(circlePath, Paint()..color = foregroundColor..style = PaintingStyle.stroke);
//   }

//   @override
//   bool shouldRepaint(MyCircularProgressIndicator oldDelegate) => value != oldDelegate.value;
// }

// // Usage
// MyCircularProgressIndicator(
//   strokeWidth: 11,
//   radius: 30, // Adjust radius as needed
//   backgroundColor: AppColors.c_f0,
//   foregroundColor: AppColors.c_2a,
//   value: 0.1,
// ),
