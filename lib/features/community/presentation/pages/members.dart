import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_user_avatar.dart';

class Members extends StatelessWidget {
  Members({super.key});

  final List<List<String>> actions = [
    ["assets/svg/icon/filter.svg", "Filter"],
    ["assets/svg/icon/export.svg", "Export"],
  ];

  final List<List<dynamic>> filterType = [
    ["Active", 0],
    ["Cancelling", 0],
    ["Churned", 0],
  ];

  final List<List<dynamic>> membersInfo = [
    ["online", "Online now"],
    ["free", "Free"],
    ["calendar", "Joined Feb 3, 2024"],
    ["location", "Tashkent"],
    ["lifetime_access", "Lifetime access"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              color: AppColors.c_bc,
              child: GridView.builder(
                clipBehavior: Clip.none,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      MediaQuery.of(context).size.width > 300 ? 2 : 1,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0,
                  mainAxisExtent: 37,
                ),
                itemCount: 2, // Change this to the number of cards you want
                itemBuilder: (BuildContext context, int index) {
                  return WButton(
                    borderRadius: 20,
                    color: AppColors.white,
                    horizontalPadding: 20,
                    verticalPadding: 8,
                    fontSize: 12,
                    onTap: () => {},
                    text: "",
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(actions[index][0]),
                        const SizedBox(width: 4),
                        Text(
                          actions[index][1],
                          style: const TextStyle(
                              fontSize: 14, color: AppColors.black),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        3,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: WButton(
                            borderRadius: 20,
                            color: AppColors.white,
                            horizontalPadding: 20,
                            verticalPadding: 8,
                            fontSize: 12,
                            onTap: () => {},
                            text: "",
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "${filterType[index][0]}",
                                  style: const TextStyle(
                                      fontSize: 14, color: AppColors.black),
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  "${filterType[index][1]}",
                                  style: const TextStyle(
                                      fontSize: 14, color: AppColors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Wrap(
                    runSpacing: 16,
                    children: List.generate(
                      3,
                      (index) => Container(
                        padding: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Row(
                                  children: [
                                    WUserAvatar(
                                      userStep: 1,
                                      userAvatar:
                                          'https://picsum.photos/250?image=9',
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Xayot Sharapov",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              "(Creator)",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  color: AppColors.c_59),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          "@xayot-sharapov-7295",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                WButton(
                                  borderRadius: 8,
                                  color: AppColors.c_e0,
                                  horizontalPadding: 16,
                                  verticalPadding: 11.5,
                                  fontSize: 12,
                                  onTap: () => {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                12.0), // Set your desired border radius here
                                          ),
                                          backgroundColor: AppColors.white,
                                          surfaceTintColor: AppColors.white,
                                          title: const Text(
                                            'Isandy has chat turned off',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.c_07,
                                            ),
                                          ),
                                          content: const Text(
                                              'Isandy has chat turned off for Side Hustle Secrets. You can turn chat off for specific groups in your settings.',
                                              style: TextStyle(
                                                color: AppColors.c_07,
                                              )),
                                          actions: <Widget>[
                                            WButton(
                                              color: AppColors.c_bc,
                                              textColor: AppColors.c_07,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              horizontalPadding: 24,
                                              verticalPadding: 12,
                                              text: "got it".toUpperCase(),
                                              onTap: () =>
                                                  Navigator.of(context).pop(),
                                            )
                                          ],
                                        );
                                      },
                                    ),
                                  },
                                  text: "",
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Text(
                                        "CHAT",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: AppColors.c_a1),
                                      ),
                                      const SizedBox(width: 10),
                                      SvgPicture.asset(
                                        "assets/svg/members/blocked_chat.svg",
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 56),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Digital Marketer",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
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
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: WButton(
        margin: const EdgeInsets.only(right: 3),
        borderRadius: 8,
        color: AppColors.c_bc,
        textColor: AppColors.c_07,
        horizontalPadding: 24,
        verticalPadding: 12,
        fontWeight: FontWeight.w600,
        fontSize: 14,
        onTap: () => {},
        text: "invite".toUpperCase(),
      ),
    );
  }
}
