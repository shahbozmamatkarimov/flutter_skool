import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_text.dart';
import 'package:skool/features/settings/presentation/pages/edit_level.dart';

@RoutePage()
class GamificationScreen extends StatefulWidget {
  const GamificationScreen({super.key});

  @override
  State<GamificationScreen> createState() => GamificationScreenState();
}

class GamificationScreenState extends State<GamificationScreen> {
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
            text: "Gamification",
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
          margin: const EdgeInsets.only(top: 16),
          padding: const EdgeInsets.all(20),
          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - 76),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WText(
                text: "Gamification",
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              const SizedBox(height: 24),
              const WText(
                text:
                    "Make your group fun! Personalize your group by naming your levels. Incentivize engagement by unlocking courses when members reach a higher level.",
                fontSize: 14,
                color: AppColors.c_07,
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
                        text: "Level 1 - STARTER",
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(height: 4),
                      WText(
                        text: "100% of members - No courses unlock",
                        fontSize: 12,
                      )
                    ],
                  ),
                  const SizedBox(width: 16),
                  WButton(
                    text: "",
                    verticalPadding: 10,
                    horizontalPadding: 12,
                    buttonType: ButtonType.outline,
                    color: AppColors.c_bc,
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EditLevel(),
                        ),
                      ),
                    },
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
