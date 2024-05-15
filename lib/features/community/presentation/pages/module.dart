import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/features/community/presentation/pages/add_module.dart';

class Module extends StatelessWidget {
  Module({super.key});

  final List<String> postIcons = ["link", "gif"];

  final TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Row(
          children: [
            Image.asset("assets/image/logo.png"),
            const SizedBox(
              width: 12,
            ),
            const Text(
              "Skool community",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 16),
          padding: const EdgeInsets.all(20),
          color: AppColors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Lesson 1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      WButton(
                        text: "",
                        verticalPadding: 10,
                        horizontalPadding: 12,
                        buttonType: ButtonType.outline,
                        color: AppColors.c_bc,
                        onTap: () => {},
                        child: SvgPicture.asset(
                            "assets/svg/classroom/checked.svg"),
                      ),
                      const SizedBox(width: 16),
                      WButton(
                        text: "",
                        verticalPadding: 10,
                        horizontalPadding: 12,
                        buttonType: ButtonType.outline,
                        color: AppColors.c_bc,
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddModule(),
                          ),
                        ),
                        child: SvgPicture.asset("assets/svg/icon/edit.svg"),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 18),
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  'https://picsum.photos/250?image=1',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.width < 400 ? 130 : 150,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "How to create your own group on Skool. Here's what we cover:",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 20),
              const Text(
                "00:04 — Creating your Skool account",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 20),
              const Text(
                "00:30 — Creating your own group",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Lesson 1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  WButton(
                    text: "",
                    verticalPadding: 8,
                    horizontalPadding: 12,
                    onTap: () => {},
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/svg/icon/expand.svg"),
                        const SizedBox(width: 2.5),
                        const Text(
                          "Expand",
                          style: TextStyle(fontSize: 14, color: AppColors.c_2a),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                """In this video, I'm going to show you how to create your own group on Skool. So the first thing you need is a Skool account. Now to create one of those, you can go to skool.com, and you just click the Sign Up button. And you enter your name, email, and a password. And when you sign up, you'll have your own Skool account. It's totally free. And you'll also join our Skool community, where we discuss all things Skool.
Now, once you've got an account and you're in the Skool community, you just click this little down arrow at the top of the screen, and then you click Create a Group.And creating a group on Skool costs money. Being a user on Skool is free. But if you want to host your own group, it's 99 a month, and we give you a 14 day free trial that you can cancel at any time with a single click. So I'm going to call my group Demo Group, and you can make it private or public, and you can change this later. And then you need to input a card. And once you have done that, you can start your free trial. And just like that, I created my group. Now that's all there is to it. It's pretty simple.
Receipts: Your members will receive receipts automatically via email. They can see them from their purchase history tab in their user settings too. Receipts are in your community name with your support email on them. They look like this:
Fees: Skool charges 2.9% + 30c /transaction. This is cheaper than Stripe because Stripe charges an additional 1.5% for international cards and 0.5% for subscriptions. Skool is 2.9% flat, for everything. Most people switching from Stripe to Skool will save 1-2%.
Payouts: Skool pays out your available balance every Wednesday directly to your bank account.
Currencies: All prices on Skool are in USD. Payouts are in your local currency.
VAT/sales tax: Skool handles VAT/sales tax compliance for you. You don’t need to register for VAT or do anything. All VAT/sales tax liability is on Skool, not you. Payouts from Skool to you are VAT/sales tax exempt because Skool is a US company. When a customer is in the EU, Skool will automatically add VAT to the purchase price, capture it, and remit it to the government.
Refund policy: Skool’s policy is to let Creators offer refunds to Members at their discretion. Skool reserves the right to issue refunds, at its discretion, depending on circumstances. In most cases, Skool will not refund on behalf of Creators.""",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
