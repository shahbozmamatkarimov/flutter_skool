import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/resources/app_colors.dart';

class WUserAvatar extends StatefulWidget {
  final String userAvatar;
  final double? height;
  final double? width;
  final int userStep;
  final String? userStepImage;
  final double? radius;
  final double? bottom;
  final double? right;
  final double? fontSize;

  const WUserAvatar({
    Key? key,
    this.userStepImage = "user_step",
    required this.userStep,
    required this.userAvatar,
    this.height = 19,
    this.width = 22,
    this.radius = 20,
    this.bottom = -2,
    this.right = -12,
    this.fontSize = 10,
  }) : super(key: key);

  @override
  State<WUserAvatar> createState() => _WUserAvatarState();
}

class _WUserAvatarState extends State<WUserAvatar> {
  bool toggle = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        CircleAvatar(
          radius: widget.radius, // Set the radius of the circle
          backgroundImage: NetworkImage(
            widget.userAvatar,
          ),
        ),
        Positioned(
          bottom: widget.bottom,
          right: widget.right,
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              SvgPicture.asset(
                "assets/svg/icon/${widget.userStepImage}.svg",
                width: widget.width,
                height: widget.height,
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                child: Center(
                    child: Text(
                  "${widget.userStep}",
                  style: TextStyle(
                    fontSize: widget.fontSize,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),
                )),
              ),
            ],
          ),
        ),
      ],
    );
  }

  getBorder({Color? color}) => OutlineInputBorder(
        borderSide: BorderSide(color: color ?? AppColors.c_f2, width: 1),
        borderRadius: BorderRadius.circular(4),
      );
}



// Stack(
//                       clipBehavior: Clip.none,
//                       children: <Widget>[
//                         const CircleAvatar(
//                           radius: 20, // Set the radius of the circle
//                           backgroundImage: NetworkImage(
//                             'https://picsum.photos/250?image=9',
//                           ),
//                         ),
//                         Positioned(
//                           bottom: -2,
//                           right: -12,
//                           child: Stack(
//                             clipBehavior: Clip.none,
//                             children: <Widget>[
//                               SvgPicture.asset("assets/svg/icon/user_step.svg"),
//                               const Positioned(
//                                 left: 0,
//                                 right: 0,
//                                 top: 0,
//                                 child: Center(
//                                     child: Text(
//                                   "1",
//                                   style: TextStyle(
//                                     fontSize: 10,
//                                     fontWeight: FontWeight.w500,
//                                     color: AppColors.white,
//                                   ),
//                                 )),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),