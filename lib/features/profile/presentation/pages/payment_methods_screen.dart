import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_text.dart';
import 'package:skool/core/widgets/w_textfield.dart';

@RoutePage()
class PaymentMethodsScreen extends StatefulWidget {
  const PaymentMethodsScreen({super.key});

  @override
  State<PaymentMethodsScreen> createState() => PaymentMethodsScreenState();
}

class PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
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
            text: "Payment Methods",
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
                    text: "Payment methods",
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                  const SizedBox(height: 24),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text:
                              "Cards for group memberships show here. Cards for groups you own are",
                          style: TextStyle(
                            color: AppColors.c_07,
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text: " here.",
                          style: TextStyle(
                            color: AppColors.c_2a,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(63),
                    // width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/svg/icon/no_cards.svg"),
                        const SizedBox(height: 15),
                        const WText(
                          text: "You don't have any cards on file",
                          fontSize: 14,
                          color: AppColors.c_07,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height > 420
                          ? MediaQuery.of(context).size.height - 455
                          : 0,
                    ),
                  ),
                  CommunityDialog(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CommunityDialog extends StatelessWidget {
  CommunityDialog({super.key});
  final TextEditingController searchController = TextEditingController();

  final List<List<String>> cardInfo = [
    ["Exp. date", "MM/YY"],
    ["CVV", "123"],
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: WButton(
        borderRadius: 8,
        color: AppColors.c_bc,
        verticalPadding: 8,
        horizontalPadding: 24,
        textColor: AppColors.c_07,
        fontSize: 14,
        fontWeight: FontWeight.w600,
        text: "add card".toUpperCase(),
        onTap: () => {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16))),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const WText(
                            text: "Add card",
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          WButton(
                            borderRadius: 4,
                            verticalPadding: 4,
                            horizontalPadding: 4,
                            text: "",
                            onTap: () => Navigator.pop(context),
                            child:
                                SvgPicture.asset("assets/svg/icon/close.svg"),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
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
                              width:
                                  (MediaQuery.of(context).size.width - 68) / 2,
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
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: WButton(
                              borderRadius: 8,
                              color: AppColors.transparent,
                              verticalPadding: 12,
                              horizontalPadding: 24,
                              textColor: AppColors.c_a1,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              buttonPositionType: MainAxisAlignment.center,
                              text: "cancel".toUpperCase(),
                              onTap: () => Navigator.pop(context),
                            ),
                          ),
                          const SizedBox(width: 28),
                          Expanded(
                            child: WButton(
                              borderRadius: 8,
                              color: AppColors.c_e0,
                              verticalPadding: 12,
                              horizontalPadding: 24,
                              textColor: AppColors.c_a1,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              buttonPositionType:
                                  MainAxisAlignment.center, // Changed to center
                              text: "add".toUpperCase(),
                              onTap: () => {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        },
      ),
    );
  }
}
