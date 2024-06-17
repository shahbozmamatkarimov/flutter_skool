import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_text.dart';

@RoutePage()
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {

  final List<List<dynamic>> referral_list = [
    [
      "Paid members",
      ["", 523]
    ],
    [
      "MRR",
      ["\$", "18,9K"]
    ],
  ];

  bool switchButton = true;

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
            text: "Dashboard",
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
                text: "🎉 Happy Monday, Xayot",
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              const SizedBox(height: 24),
              const WText(
                text: "Subscriptions",
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: AppColors.c_07,
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                children: List.generate(
                  2,
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
                        // crossAxisAlignment: CrossAxisAlignment.start,
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
                                TextSpan(
                                  text: referral_list[index][1][0],
                                  style: const TextStyle(
                                    color: AppColors.c_a1,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: referral_list[index][1][1].toString(),
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
            ],
          ),
        ),
      ),
    );
  }
}
