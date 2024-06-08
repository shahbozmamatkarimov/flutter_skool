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
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
            text: "Profile",
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const WText(
                    text: "Profile",
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                  const SizedBox(height: 24),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 50, // Set the radius of the circle
                              backgroundImage: NetworkImage(
                                'https://picsum.photos/250?image=9',
                              ),
                            ),
                            const SizedBox(width: 16),
                            WButton(
                              borderRadius: 8,
                              buttonType: ButtonType.outline,
                              color: AppColors.c_bc,
                              verticalPadding: 12,
                              horizontalPadding: 24,
                              textColor: AppColors.c_2a,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              text: "change profile photo".toUpperCase(),
                              onTap: () => {},
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            Expanded(
                              child: WTextField(
                                controller: nameController,
                                borderColor: AppColors.c_e0,
                                hint: "Xayot",
                                textStyle:
                                    const TextStyle(color: AppColors.c_a1),
                                hintFontSize: 14,
                                enabled: false,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: WTextField(
                                controller: lastnameController,
                                borderColor: AppColors.c_e0,
                                hint: "Scharapov",
                                textStyle:
                                    const TextStyle(color: AppColors.c_a1),
                                hintFontSize: 14,
                                enabled: false,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 4),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: WText(
                                  text:
                                      "You can only change your name once, and you must use your real name.",
                                  fontSize: 12,
                                  color: AppColors.c_a1,
                                ),
                              ),
                            ),
                            SizedBox(width: 16),
                            WText(
                              text: "Change name.",
                              fontSize: 12,
                              color: AppColors.c_2a,
                            )
                          ],
                        ),
                        const SizedBox(height: 24),
                        const WText(
                          text: "URL",
                          fontSize: 12,
                          color: AppColors.c_a1,
                        ),
                        const SizedBox(height: 8),
                        WTextField(
                          controller: lastnameController,
                          borderColor: AppColors.c_e0,
                          hint: "skool.com/@xayot-sharapov-7295",
                          textStyle: const TextStyle(color: AppColors.c_a1),
                          hintFontSize: 14,
                          enabled: false,
                        ),
                        const SizedBox(height: 4),
                        const WText(
                          text:
                              "You can change your URL once you’ve got 90 contributions, 30 followers, and been using it for 90 days.",
                          fontSize: 12,
                          color: AppColors.c_a1,
                        ),
                        const SizedBox(height: 24),
                        const WText(
                          text: "Bio",
                          fontSize: 12,
                          color: AppColors.c_a1,
                        ),
                        const SizedBox(height: 8),
                        WTextField(
                          borderColor: AppColors.c_e0,
                          controller: lastnameController,
                          hint: "Bio",
                          textStyle: const TextStyle(color: AppColors.c_07),
                          hintFontSize: 14,
                          maxLines: 4,
                        ),
                        const SizedBox(height: 4),
                        Container(
                          width: double.infinity,
                          alignment: Alignment.centerRight,
                          child: const WText(
                            text: "16/150",
                            fontSize: 12,
                            color: AppColors.c_a1,
                          ),
                        ),
                        const SizedBox(height: 24),
                        const WText(
                          text: "Location",
                          fontSize: 12,
                          color: AppColors.c_a1,
                        ),
                        const SizedBox(height: 8),
                        WTextField(
                          controller: lastnameController,
                          borderColor: AppColors.c_e0,
                          hint: "Location",
                          textStyle: const TextStyle(color: AppColors.c_07),
                          hintFontSize: 14,
                        ),
                        const SizedBox(height: 24),
                        const WText(
                          text: "Myers Briggs",
                          fontSize: 12,
                          color: AppColors.c_a1,
                        ),
                        const SizedBox(height: 8),
                        FractionallySizedBox(
                          widthFactor: 0.9, // 70% of the available width
                          child: WTextField(
                            controller: lastnameController,
                            borderColor: AppColors.c_e0,
                            hint: "Myers Briggs",
                            textStyle: const TextStyle(color: AppColors.c_07),
                            hintFontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 24),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)),
                          clipBehavior: Clip.hardEdge,
                          child: Column(
                            children: accordionItems.map((module) {
                              return ExpansionPanelList(
                                elevation: 0,
                                dividerColor: AppColors.c_07,
                                expandedHeaderPadding: EdgeInsets.zero,
                                materialGapSize: 0,
                                expansionCallback: (panelIndex, isExpanded) {
                                  setState(() {
                                    accordionItems.forEach((module) {
                                      module[0]['isExpanded'] = false;
                                    });
                                    module[panelIndex]['isExpanded'] =
                                        isExpanded;
                                  });
                                },
                                children: module
                                    .map(
                                      (e) => ExpansionPanel(
                                        backgroundColor: AppColors.white,
                                        canTapOnHeader: true,
                                        headerBuilder:
                                            (BuildContext _, bool isExpanded) {
                                          return Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "${e['moduleName']}",
                                                style: const TextStyle(
                                                  color: AppColors.c_07,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                        isExpanded: e['isExpanded'],
                                        body: e['index'] == 1
                                            ? Column(
                                                children: [
                                                  const SizedBox(height: 24),
                                                  for (var i in socialLinks)
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              bottom: 24),
                                                      child: WTextField(
                                                        controller: i[1],
                                                        borderColor:
                                                            AppColors.c_e0,
                                                        hint: i[0],
                                                        textStyle:
                                                            const TextStyle(
                                                                color: AppColors
                                                                    .c_07),
                                                        hintFontSize: 14,
                                                      ),
                                                    )
                                                ],
                                              )
                                            : Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(height: 24),
                                                  const WText(
                                                    text:
                                                        "Control what groups show on your profile.",
                                                    fontSize: 14,
                                                    color: AppColors.c_07,
                                                  ),
                                                  const SizedBox(height: 24),
                                                  const WText(
                                                    text: "Creator of",
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: AppColors.c_07,
                                                  ),
                                                  const SizedBox(height: 24),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          // Image.asset("assets/image/logo.png"),
                                                          Container(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        6,
                                                                    vertical:
                                                                        10),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: AppColors
                                                                  .c_2a,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            child: const WText(
                                                              text: "DM",
                                                              color: AppColors
                                                                  .white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              width: 16),
                                                          const Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "Digital Marketer",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              ),
                                                              SizedBox(
                                                                  height: 4),
                                                              Text(
                                                                "Private • 1 member",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                      Switch(
                                                        // This bool value toggles the switch.
                                                        value: switchButton,
                                                        inactiveThumbImage:
                                                            const AssetImage(
                                                                "assets/image/switch.png"),
                                                        activeColor:
                                                            AppColors.white,
                                                        activeTrackColor:
                                                            AppColors.c_2a,
                                                        inactiveThumbColor:
                                                            AppColors.white,
                                                        inactiveTrackColor:
                                                            AppColors.c_e0,
                                                        focusColor: AppColors
                                                            .transparent,
                                                        trackOutlineColor:
                                                            const MaterialStatePropertyAll(
                                                                AppColors
                                                                    .transparent),
                                                        onChanged:
                                                            (bool value) {
                                                          // This is called when the user toggles the switch.
                                                          setState(() {
                                                            switchButton =
                                                                value;
                                                          });
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(height: 24),
                                                  const WText(
                                                    text: "Member of",
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: AppColors.c_07,
                                                  ),
                                                  const SizedBox(height: 24),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          // Image.asset("assets/image/logo.png"),
                                                          Container(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        6,
                                                                    vertical:
                                                                        10),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: AppColors
                                                                  .c_2a,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            child: const WText(
                                                              text: "DM",
                                                              color: AppColors
                                                                  .white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              width: 16),
                                                          const Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "Digital Marketer",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              ),
                                                              SizedBox(
                                                                  height: 4),
                                                              Text(
                                                                "Private • 1 member",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                      Switch(
                                                        // This bool value toggles the switch.
                                                        value: switchButton,
                                                        inactiveThumbImage:
                                                            const AssetImage(
                                                                "assets/image/switch.png"),
                                                        activeColor:
                                                            AppColors.white,
                                                        activeTrackColor:
                                                            AppColors.c_2a,
                                                        inactiveThumbColor:
                                                            AppColors.white,
                                                        inactiveTrackColor:
                                                            AppColors.c_e0,
                                                        focusColor: AppColors
                                                            .transparent,
                                                        trackOutlineColor:
                                                            const MaterialStatePropertyAll(
                                                                AppColors
                                                                    .transparent),
                                                        onChanged:
                                                            (bool value) {
                                                          // This is called when the user toggles the switch.
                                                          setState(() {
                                                            switchButton =
                                                                value;
                                                          });
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(height: 4),
                                                ],
                                              ),
                                      ),
                                    )
                                    .toList(),
                              );
                            }).toList(),
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
                            text: "update profile".toUpperCase(),
                            onTap: () => {},
                          ),
                        )
                      ],
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
