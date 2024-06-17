import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_text.dart';
import 'package:skool/core/widgets/w_user_avatar.dart';
import 'package:skool/core/widgets/w_user_indicator.dart';

@RoutePage()
class MyProfileScreen extends StatelessWidget {
  MyProfileScreen({super.key});
  final List<List<dynamic>> membersInfo = [
    ["location", "Tashkent"],
    ["online", "Online now"],
    ["calendar", "Joined Feb 3, 2024"],
  ];

  final List<List<dynamic>> userActiveInfo = [
    [1, 'Contributions'],
    [0, 'Followers'],
    [3, 'Following'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c_f0,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.white,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const WText(
                        text: "My profile",
                        fontWeight: FontWeight.w600,
                        color: AppColors.c_07,
                      ),
                      const SizedBox(height: 16),
                      WButton(
                        color: AppColors.transparent,
                        verticalPadding: 0,
                        horizontalPadding: 0,
                        text: "",
                        onTap: () => {context.router.pushNamed("/profilemenu")},
                        child: SvgPicture.asset("assets/svg/icon/settings.svg"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 22),
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
                            const Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Center(
                                  child: WuserProgressIndicator(
                                    value: 0.1,
                                    strokeWidth: 10,
                                    trackColor: AppColors.c_f0,
                                    progressColor: AppColors.c_2a,
                                    trackCornerRadius: 10,
                                    circleSize: 120,
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  left: 10,
                                  right: 0,
                                  child: WUserAvatar(
                                    userStep: 1,
                                    radius: 50,
                                    width: 33,
                                    height: 30,
                                    right: 0,
                                    bottom: -12,
                                    fontSize: 16,
                                    userAvatar:
                                        'https://picsum.photos/250?image=9',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 30),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: AppColors.c_d9,
                                    borderRadius: BorderRadius.circular(26),
                                  ),
                                  child: const WText(
                                    text: "Level 1 - STARTER",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.c_2a,
                                  ),
                                ),
                                const SizedBox(height: 12),
                                RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "40",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.c_2a,
                                          fontSize: 12,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " points to level up",
                                        style: TextStyle(
                                          color: AppColors
                                              .c_07, // Set the color for the rest of the text
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 22),
                        const WText(
                          text: "Xayot Sharapov",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                        const SizedBox(height: 4),
                        const WText(
                          text: "@xayot-sharapov-7295",
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.c_a1,
                        ),
                        const SizedBox(height: 12),
                        const WText(text: "Digital Marketer", fontSize: 14),
                        const SizedBox(height: 12),
                        Wrap(
                          spacing: 12.0,
                          runSpacing: 12.0,
                          children: List.generate(
                            membersInfo.length,
                            (index) => WButton(
                              borderRadius: 8,
                              color: AppColors.c_f2,
                              horizontalPadding: 8,
                              verticalPadding: 6,
                              fontSize: 12,
                              onTap: () => {},
                              text: "",
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset(
                                      "assets/svg/members/${membersInfo[index][0]}.svg"),
                                  const SizedBox(width: 4),
                                  Text(
                                    "${membersInfo[index][1]}",
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: AppColors.c_07,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            for (var userInfo in userActiveInfo)
                              Column(
                                children: [
                                  WText(
                                    text: userInfo[0].toString(),
                                    color: AppColors.c_2a,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  WText(
                                    text: userInfo[1],
                                    color: AppColors.c_a1,
                                    fontSize: 12,
                                  ),
                                ],
                              ),
                          ],
                        ),
                        const SizedBox(height: 24),
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
                            text: "edit profile".toUpperCase(),
                            onTap: () => {},
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.white,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WText(
                    text: "Daily activity",
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 20),
                  WText(
                    text: "Developing...",
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.white,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const WText(
                    text: "Created by Xayot",
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(height: 28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // Image.asset("assets/image/logo.png"),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 10),
                            decoration: BoxDecoration(
                              color: AppColors.c_2a,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const WText(
                              text: "DM",
                              color: AppColors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 16),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Digital Marketer",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Private • 1 member",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                      WButton(
                        borderRadius: 8,
                        color: AppColors.c_bc,
                        verticalPadding: 12,
                        horizontalPadding: 24,
                        textColor: AppColors.c_07,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        buttonPositionType:
                            MainAxisAlignment.center, // Changed to center
                        text: "view".toUpperCase(),
                        onTap: () => {},
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.white,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const WText(
                    text: "Memberships",
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(height: 28),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.c_2a,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Image.network(
                          'https://picsum.photos/250?image=9',
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Skool Community",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Public • 51.6k members",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const WText(
                text: "1 contribution to Digital Marketer",
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              height: 36,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Contributions for:",
                          style: TextStyle(
                            color: AppColors
                                .c_a1, // Set the color for the rest of the text
                            fontSize: 12,
                          ),
                        ),
                        TextSpan(
                          text: " Digital Marketer",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColors.c_2a,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  WButton(
                    borderRadius: 20,
                    color: AppColors.transparent,
                    horizontalPadding: 9,
                    verticalPadding: 9,
                    onTap: () => {},
                    text: "",
                    child: SvgPicture.asset(
                      "assets/svg/icon/filter.svg",
                      color: AppColors.c_2a,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // comments
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.c_bc),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: WButton(
                          borderRadius: 8,
                          color: AppColors.c_f0,
                          verticalPadding: 8,
                          horizontalPadding: 12,
                          textColor: AppColors.c_07,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          buttonPositionType:
                              MainAxisAlignment.center, // Changed to center
                          text: "Watching (1)".toUpperCase(),
                          onTap: () => {},
                        ),
                      ),
                      const SizedBox(width: 8),
                      WButton(
                        buttonType: ButtonType.outline,
                        color: AppColors.c_bc,
                        borderRadius: 8,
                        fontSize: 14,
                        verticalPadding: 8,
                        horizontalPadding: 8,
                        onTap: () => {},
                        text: "",
                        child: SvgPicture.asset("assets/svg/icon/threedot.svg"),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),
                  // comments
                  SizedBox(
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 20, // Set the radius of the circle
                              backgroundImage: NetworkImage(
                                'https://picsum.photos/250?image=9',
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Cameron Williamson",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 2),
                                RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "19d ago in ",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " Announcements",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.c_59,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Let the Game Begin!",
                              style: TextStyle(fontSize: 14),
                            ),
                            const SizedBox(height: 24),
                            Row(
                              children: [
                                WButton(
                                  buttonType: ButtonType.outline,
                                  color: AppColors.c_f0,
                                  horizontalPadding: 6,
                                  verticalPadding: 6,
                                  onTap: () => {},
                                  text: "",
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SvgPicture.asset(
                                          "assets/svg/icon/like.svg"),
                                      const SizedBox(width: 4),
                                      const Text(
                                        'Like',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: AppColors.c_59),
                                      ),
                                      const SizedBox(width: 4),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        decoration: const BoxDecoration(
                                            border: Border(
                                                left: BorderSide(
                                                    color: AppColors.c_f0))),
                                        child: const Text(
                                          '355',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: AppColors.c_59),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                WButton(
                                  color: AppColors.white,
                                  horizontalPadding: 0,
                                  verticalPadding: 0,
                                  onTap: () => {},
                                  text: "",
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SvgPicture.asset(
                                          "assets/svg/icon/message.svg"),
                                      const SizedBox(width: 4),
                                      const Text(
                                        '29 comments',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: AppColors.c_59),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ), // main comment end
                      ],
                    ),
                  ), // inline comments end
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
