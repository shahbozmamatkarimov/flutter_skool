import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_text.dart';

@RoutePage()
class ReferralsScreen extends StatefulWidget {
  const ReferralsScreen({super.key});

  @override
  State<ReferralsScreen> createState() => ReferralsScreenState();
}

class ReferralsScreenState extends State<ReferralsScreen> {
  final List<String> access = <String>[
    "ON",
    "OFF",
  ];

  final List<List<dynamic>> referral_list = [
    ["Lifetime", 1500],
    ["Last 30 days", 200],
    ["Panding", 150],
    ["Available", 0],
  ];

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
            text: "Referrals",
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
                    text: "Earn 40% of recurring revenue for life!",
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                  const SizedBox(height: 24),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text:
                              "Refer people to Skool and earn 40% of monthly recurring revenue for life. If you have a group and one of your members creates a group - we'll attribute the referral to you automatically.",
                          style: TextStyle(
                            color: AppColors.c_07,
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text: " Learn more.",
                          style: TextStyle(
                            color: AppColors.c_2a,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  const WText(
                    text: "Your referral link",
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.c_e0),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Text(
                            "https://www.skool.com/refer?ref=cde862ce8b034a82bba2c588c29f1b09",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: AppColors.c_07,
                              height: 16 / 16,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      WButton(
                        text: "COPY",
                        horizontalPadding: 24,
                        verticalPadding: 12,
                        color: AppColors.c_bc,
                        borderRadius: 8,
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                        onTap: () => {},
                      )
                    ],
                  ),
                  const SizedBox(height: 24),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(46),
                    // width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.c_e0),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/svg/profile/referrals.svg"),
                        const SizedBox(height: 15),
                        const WText(
                          text: "Your sales will show here",
                          fontSize: 14,
                          color: AppColors.c_07,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,
                    children: List.generate(
                      4,
                      (index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 16),
                          width: (MediaQuery.of(context).size.width - 60) / 2,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.c_bc),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WText(
                                text: referral_list[index][0],
                                color: AppColors.c_a1,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                              const SizedBox(height: 12),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    const TextSpan(
                                      text: "\$",
                                      style: TextStyle(
                                        color: AppColors.c_a1,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    TextSpan(
                                      text: referral_list[index][1].toString(),
                                      style: const TextStyle(
                                        color: AppColors.c_07,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: WButton(
                      borderRadius: 8,
                      color: AppColors.c_e0,
                      verticalPadding: 12,
                      horizontalPadding: 24,
                      textColor: AppColors.c_a1,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      text: "pay out".toUpperCase(),
                      onTap: () => {},
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
