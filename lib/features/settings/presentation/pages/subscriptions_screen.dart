import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_text.dart';

@RoutePage()
class SubscriptionsScreen extends StatefulWidget {
  const SubscriptionsScreen({super.key});

  @override
  State<SubscriptionsScreen> createState() => SubscriptionsScreenState();
}

class SubscriptionsScreenState extends State<SubscriptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c_f0,
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(60.0), // Set your preferred height here
        child: AppBar(
          backgroundColor: AppColors.white,
          title: const WText(
            text: "Subscriptions",
            fontWeight: FontWeight.w600,
            color: AppColors.c_07,
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
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.white,
          margin: EdgeInsets.only(top: 16),
          padding: const EdgeInsets.all(20),
          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - 76),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WText(
                text: "Subscriptions",
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              const SizedBox(height: 24),
              const WText(
                text:
                    "Make money by charging a monthly subscription for access to your community.",
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: AppColors.c_07,
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(8),
                // width: (MediaQuery.of(context).size.width - 60) / 2,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.c_bc),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset("assets/svg/icon/free.svg"),
                            const WText(
                              text: "Free",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.c_07,
                            ),
                          ],
                        ),
                        const WText(
                          text: "1 member",
                          fontSize: 14,
                          color: AppColors.c_2a,
                        ),
                        Transform.rotate(
                          angle: 90 * pi / 180, // 90 degrees in radians
                          child:
                              SvgPicture.asset("assets/svg/icon/threedot.svg"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    WButton(
                      borderRadius: 8,
                      color: AppColors.c_6f,
                      verticalPadding: 8,
                      horizontalPadding: 24,
                      textColor: AppColors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      text: "Current price".toUpperCase(),
                      onTap: () => {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: WButton(
                  borderRadius: 8,
                  color: AppColors.c_bc,
                  verticalPadding: 8,
                  horizontalPadding: 24,
                  textColor: AppColors.c_07,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  text: "add price".toUpperCase(),
                  onTap: () => {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
