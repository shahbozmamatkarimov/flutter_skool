import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_text.dart';
import 'package:skool/core/widgets/w_textfield.dart';

class UpdatePaymentInfo extends StatefulWidget {
  const UpdatePaymentInfo({super.key});

  @override
  State<UpdatePaymentInfo> createState() => UpdatePaymentInfoState();
}

class UpdatePaymentInfoState extends State<UpdatePaymentInfo> {
  final TextEditingController searchController = TextEditingController();

  final List<List<String>> cardInfo = [
    ["Exp. date", "MM/YY"],
    ["CVV", "123"],
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
          margin: EdgeInsets.only(top: 16),
          padding: const EdgeInsets.all(20),
          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - 76),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WText(
                text: "Update payment info",
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              const SizedBox(height: 24),
              const WText(
                text: "Card number",
                color: AppColors.c_a1,
                fontSize: 12,
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: WTextField(
                  controller: searchController,
                  hint: "0000 0000 0000 0000",
                  hintFontSize: 14,
                  borderRadius: 4,
                  contentPadding: const EdgeInsets.all(12),
                  fillColor: AppColors.transparent,
                  borderColor: AppColors.c_e0,
                  // prefixIcon:
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      "assets/svg/cards/visa.svg",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 28.0,
                runSpacing: 20.0,
                children: List.generate(
                  2,
                  (index) {
                    return SizedBox(
                      width: (MediaQuery.of(context).size.width - 68) / 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WText(
                            text: cardInfo[index][0],
                            color: AppColors.c_a1,
                            fontSize: 12,
                          ),
                          const SizedBox(height: 8),
                          WTextField(
                            controller: searchController,
                            hint: cardInfo[index][1],
                            hintFontSize: 14,
                            borderRadius: 4,
                            contentPadding: const EdgeInsets.all(12),
                            fillColor: AppColors.transparent,
                            borderColor: AppColors.c_e0,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  WButton(
                    borderRadius: 8,
                    color: AppColors.c_e0,
                    verticalPadding: 12,
                    horizontalPadding: 24,
                    textColor: AppColors.c_a1,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    buttonPositionType:
                        MainAxisAlignment.center, // Changed to center
                    text: "UPDATE".toUpperCase(),
                    onTap: () => {},
                  ),
                  const SizedBox(width: 12),
                  WButton(
                    borderRadius: 8,
                    // color: AppColors.c_e0,
                    verticalPadding: 12,
                    horizontalPadding: 24,
                    textColor: AppColors.c_a1,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    buttonPositionType: MainAxisAlignment.center,
                    text: "cancel".toUpperCase(),
                    onTap: () => {Navigator.pop(context)},
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
