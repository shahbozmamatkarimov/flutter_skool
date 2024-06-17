import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_text.dart';

@RoutePage()
class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => CommunityScreenState();
}

class CommunityScreenState extends State<CommunityScreen> {
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
            text: "Communities",
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: AppColors.white,
              margin: EdgeInsets.only(top: 16),
              padding: const EdgeInsets.all(20),
              constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height - 76),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const WText(
                    text: "Communities",
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                  const SizedBox(height: 24),
                  const WText(
                    text:
                        "Drag and drop to reorder your communities. Changes here will reflect in your switcher.",
                    color: AppColors.c_07,
                    fontSize: 14,
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // Image.asset("assets/image/logo.png"),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 10),
                            decoration: BoxDecoration(
                              color: AppColors.c_2a,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const WText(
                              text: "DM",
                              color: AppColors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 16),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WText(
                                text: "Digital Marketer",
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(height: 4),
                              WText(
                                text: "Public • Free",
                                fontSize: 12,
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 32.0,
                            width: 1.0,
                            color: AppColors.c_e0,
                          ),
                          const SizedBox(width: 16),
                          SvgPicture.asset("assets/svg/home/full_pin.svg"),
                          // SvgPicture.asset("assets/svg/home/pin.svg", color: AppColors.c_a1,),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: WButton(
                          color: AppColors.c_bc,
                          buttonType: ButtonType.outline,
                          verticalPadding: 12,
                          text: "",
                          onTap: () => {},
                          child: Row(
                            children: [
                              WText(
                                text: "admin".toUpperCase(),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.c_2a,
                              ),
                              const SizedBox(width: 10),
                              SvgPicture.asset(
                                  "assets/svg/profile/settings.svg")
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: WButton(
                          color: AppColors.c_bc,
                          buttonType: ButtonType.outline,
                          verticalPadding: 12,
                          text: "",
                          onTap: () => {},
                          child: Row(
                            children: [
                              WText(
                                text: "Membership".toUpperCase(),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.c_2a,
                              ),
                              const SizedBox(width: 10),
                              SvgPicture.asset(
                                  "assets/svg/profile/settings.svg")
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
