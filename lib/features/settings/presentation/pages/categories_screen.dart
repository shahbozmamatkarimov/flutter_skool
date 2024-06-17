import 'dart:math';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_text.dart';

@RoutePage()
class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => CategoriesScreenState();
}

class CategoriesScreenState extends State<CategoriesScreen> {
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
            text: "Categories",
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
                text: "Categories",
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              const SizedBox(height: 24),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      WText(
                        text: "General discussion (1)",
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(height: 8),
                      WText(
                        text: "Discuss anything here",
                        fontSize: 12,
                      )
                    ],
                  ),
                  const SizedBox(width: 16),
                  Row(
                    children: [
                      WButton(
                        text: "",
                        verticalPadding: 10,
                        horizontalPadding: 12,
                        buttonType: ButtonType.outline,
                        color: AppColors.c_bc,
                        onTap: () => {},
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/svg/icon/edit.svg"),
                            const SizedBox(width: 4),
                            const WText(
                              text: "Edit",
                              color: AppColors.c_2a,
                              fontSize: 12,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Transform.rotate(
                        angle: 90 * (pi / 180), // Convert degrees to radians
                        child: WButton(
                          buttonType: ButtonType.outline,
                          color: AppColors.c_bc,
                          textColor: AppColors.c_2a,
                          borderRadius: 8,
                          fontSize: 14,
                          verticalPadding: 8,
                          horizontalPadding: 8,
                          onTap: () => {},
                          text: "",
                          child: SvgPicture.asset(
                            "assets/svg/icon/threedot.svg",
                            color: AppColors.c_2a,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
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
                  text: "add category".toUpperCase(),
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
