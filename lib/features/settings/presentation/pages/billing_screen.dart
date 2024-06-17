import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_text.dart';
import 'package:skool/features/settings/presentation/pages/update_payment_info.dart';

@RoutePage()
class BillingScreen extends StatefulWidget {
  const BillingScreen({super.key});

  @override
  State<BillingScreen> createState() => BillingScreenState();
}

class BillingScreenState extends State<BillingScreen> {
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
            text: "Billing & referrals",
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
                text: "Billing",
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              const SizedBox(height: 24),
              WButton(
                borderRadius: 8,
                buttonType: ButtonType.outline,
                color: AppColors.c_bc,
                verticalPadding: 8,
                horizontalPadding: 24,
                textColor: AppColors.c_2a,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                text: "UPDATE PAYMENT INFO".toUpperCase(),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UpdatePaymentInfo(),
                    ),
                  ),
                },
              ),
              const SizedBox(height: 24),
              const WText(
                text: "Invoice history",
                fontSize: 14,
                color: AppColors.c_2a,
              ),
              const SizedBox(height: 24),
              const WText(
                text: "Referrals",
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 24),
              const WText(
                text:
                    "If somebody creates a group from your group, we’ll automatically pay you 40% every month. This way Skool becomes an income stream, not a cost. Earnings will go to this admin:",
                fontSize: 14,
                color: AppColors.c_07,
              ),
              const SizedBox(height: 24),
              const Row(
                children: [
                  CircleAvatar(
                    radius: 20, // Set the radius of the circle
                    backgroundImage: NetworkImage(
                      'https://picsum.photos/250?image=9',
                    ),
                  ),
                  SizedBox(width: 16),
                  Text(
                    "Xayot Sharapov",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.c_07,
                    ),
                  ),
                  SizedBox(width: 16),
                  Text(
                    "(Change)",
                    style: TextStyle(fontSize: 14, color: AppColors.c_2a),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const WText(
                text: "Xayot's referral link",
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 24),
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
                        "https://www.skool.com/digital-marketer-3698/about",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: AppColors.c_07,
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
              WButton(
                borderRadius: 8,
                buttonType: ButtonType.outline,
                color: AppColors.c_bc,
                verticalPadding: 8,
                horizontalPadding: 24,
                textColor: AppColors.c_2a,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                text: "SEE YOUR REFERRALS".toUpperCase(),
                onTap: () => {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
