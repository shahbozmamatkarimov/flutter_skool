import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_text.dart';

@RoutePage()
class PayoutsScreen extends StatefulWidget {
  const PayoutsScreen({super.key});

  @override
  State<PayoutsScreen> createState() => PayoutsScreenState();
}

class PayoutsScreenState extends State<PayoutsScreen> {
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
            text: "Payouts",
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
          width: double.infinity,
          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - 76),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.c_bc),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        const WText(
                          text: "Balance",
                          color: AppColors.c_a1,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        const SizedBox(height: 12),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "\$",
                                style: TextStyle(
                                  color: AppColors.c_a1,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text: "18,9K",
                                style: TextStyle(
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
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const WText(
                        text: "Next payout will be \$0 in 2 days",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.c_07,
                      ),
                      SvgPicture.asset("assets/svg/icon/question_info.svg"),
                      const SizedBox(height: 8),
                      const WText(
                        text: "\$0 is pending",
                        fontSize: 14,
                        color: AppColors.c_07,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 24),
              const WText(
                text: "Payout history",
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.c_07,
              ),
              const SizedBox(height: 24),
              const Divider(color: AppColors.c_e0),
              const SizedBox(height: 24),
              const WText(
                text: "No payout history.",
                fontSize: 14,
                color: AppColors.c_07,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
