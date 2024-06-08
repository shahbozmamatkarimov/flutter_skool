import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_text.dart';
import 'package:skool/core/widgets/w_textfield.dart';

@RoutePage()
class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScrenenState();
}

class _PasswordScrenenState extends State<PasswordScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();

  final List<String> postIcons = ["link", "gif"];

  final TextEditingController commentController = TextEditingController();

  final List<List<dynamic>> membersInfo = [
    ["location", "Tashkent"],
    ["online", "Online now"],
    ["calendar", "Joined Feb 3, 2024"],
  ];

  final List<List<dynamic>> socialLinks = [
    ["Website", TextEditingController()],
    ["Instagram", TextEditingController()],
    ["Twitter", TextEditingController()],
    ["YouTube", TextEditingController()],
    ["LinkedIn", TextEditingController()],
    ["Facebook", TextEditingController()],
  ];

  final List<List<dynamic>> userActiveInfo = [
    [1, 'Contributions'],
    [0, 'Followers'],
    [3, 'Following'],
  ];

  final List<List<Map<String, dynamic>>> accordionItems = [
    [
      {"isExpanded": false, "moduleName": "Social links", "index": 1},
    ],
    [
      {"isExpanded": false, "moduleName": "Membership visibility", "index": 2},
    ],
  ];

  bool switchButton = true;

  final List<String> access = <String>[
    "(GMT +05:00) Asia/Tashkent",
    "(GMT +05:00) Asia/Uzbekistan",
    "(GMT +05:00) Asia/Samarkand",
  ];
  late String access_value = access.first;

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
            text: "Password",
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
                    text: "Change password",
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                  const SizedBox(height: 24),
                  WTextField(
                    controller: lastnameController,
                    borderColor: AppColors.c_e0,
                    hint: "Old password",
                    textStyle: const TextStyle(color: AppColors.c_a1),
                    hintFontSize: 14,
                  ),
                  const SizedBox(height: 24),
                  WTextField(
                    controller: lastnameController,
                    borderColor: AppColors.c_e0,
                    hint: "New password",
                    textStyle: const TextStyle(color: AppColors.c_a1),
                    hintFontSize: 14,
                  ),
                  const SizedBox(height: 24),
                  WTextField(
                    controller: lastnameController,
                    borderColor: AppColors.c_e0,
                    hint: "Confirm new password",
                    textStyle: const TextStyle(color: AppColors.c_a1),
                    hintFontSize: 14,
                  ),
                  const SizedBox(height: 24),
                  Container(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height > 420
                          ? MediaQuery.of(context).size.height - 420
                          : 0,
                    ),
                  ),
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
                      text: "change password".toUpperCase(),
                      onTap: () => {},
                    ),
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
