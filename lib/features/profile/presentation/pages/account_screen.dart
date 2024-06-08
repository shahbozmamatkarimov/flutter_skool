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
class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScrenenState();
}

class _AccountScrenenState extends State<AccountScreen> {
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
            text: "Account",
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
                    text: "Email",
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                  const SizedBox(height: 24),
                  const WText(
                    text: "Email",
                    fontSize: 12,
                    color: AppColors.c_a1,
                  ),
                  const SizedBox(height: 8),
                  WTextField(
                    controller: lastnameController,
                    borderColor: AppColors.c_e0,
                    hint: "Email",
                    textStyle: const TextStyle(color: AppColors.c_a1),
                    hintFontSize: 14,
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: WButton(
                      borderRadius: 8,
                      buttonType: ButtonType.outline,
                      color: AppColors.c_bc,
                      verticalPadding: 12,
                      horizontalPadding: 24,
                      textColor: AppColors.c_2a,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      text: "change email".toUpperCase(),
                      onTap: () => {},
                    ),
                  ),
                  const SizedBox(height: 24),
                  const WText(
                    text: "Timezone",
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                  const SizedBox(height: 24),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.c_e0),
                        borderRadius: BorderRadius.circular(4)),
                    height: 45,
                    child: DropdownButton<String>(
                      value: access_value,
                      icon: SvgPicture.asset("assets/svg/icon/arrow.svg"),
                      elevation: 0,
                      padding: const EdgeInsets.all(12),
                      borderRadius: BorderRadius.circular(4),
                      dropdownColor: AppColors.white,
                      focusColor: AppColors.c_e0,
                      isExpanded: true,
                      style: const TextStyle(
                        color: AppColors.c_07,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      underline: Container(
                        height: 0,
                        color: Colors.deepPurpleAccent,
                      ),
                      selectedItemBuilder: (BuildContext context) {
                        return access.map<Widget>((String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          );
                        }).toList();
                      },
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          access_value = value!;
                        });
                      },
                      items:
                          access.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Row(
                            children: [
                              Text(value),
                              const SizedBox(width: 8),
                              access_value == value
                                  ? SvgPicture.asset("assets/svg/icon/true.svg")
                                  : const Text(""),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 16),
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
                      text: "update account".toUpperCase(),
                      onTap: () => {},
                    ),
                  ),
                  const SizedBox(height: 24),
                  const WText(
                    text: "Sessions",
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: WButton(
                      borderRadius: 8,
                      color: AppColors.c_e0,
                      buttonType: ButtonType.outline,
                      verticalPadding: 12,
                      horizontalPadding: 24,
                      textColor: AppColors.c_a1,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      text: "log out everywhere".toUpperCase(),
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
