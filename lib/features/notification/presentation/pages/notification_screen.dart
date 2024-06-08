import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_text.dart';
import 'package:skool/core/widgets/w_textfield.dart';

@RoutePage()
class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  final List<String> data = [];
  final TextEditingController searchController = TextEditingController();

  final List<String> notificationType = [
    'All group',
    'Just this group',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c_bc,
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(160.0), // Set your preferred height here
        child: AppBar(
          backgroundColor: AppColors.white,
          flexibleSpace: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                height: 160, // Adjust height if necessary
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const WText(
                      text: "Notifications",
                      fontWeight: FontWeight.w600,
                      color: AppColors.c_07,
                      fontSize: 16,
                    ),
                    const SizedBox(height: 16),
                    WTextField(
                      controller: searchController,
                      hint: "Search all reports",
                      hintFontSize: 16,
                      fillColor: AppColors.c_f0,
                      textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.c_9c),
                      borderRadius: 8,
                      borderColor: AppColors.transparent,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 20,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 20,
                        ),
                        child: SvgPicture.asset(
                          "assets/svg/icon/search.svg",
                          width: 20,
                          color: AppColors.c_9c,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        WButton(
                          verticalPadding: 0,
                          horizontalPadding: 0,
                          color: AppColors.transparent,
                          text: "",
                          onTap: () => {
                            showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  // height: 148,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: const BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(16))),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Stack(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: <Widget>[
                                                  for (String val
                                                      in notificationType)
                                                    DropdownMenuItem(
                                                      value: val,
                                                      child: Text(val),
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Positioned(
                                          right: 16,
                                          top: 8,
                                          child: WButton(
                                            borderRadius: 4,
                                            verticalPadding: 4,
                                            horizontalPadding: 4,
                                            text: "",
                                            onTap: () => Navigator.pop(context),
                                            child: SvgPicture.asset(
                                                "assets/svg/icon/close.svg"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          },
                          child: Row(
                            children: [
                              const WText(
                                text: "All groups",
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: AppColors.c_a1,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              SvgPicture.asset(
                                "assets/svg/icon/arrow.svg",
                                color: AppColors.c_a1,
                              ),
                            ],
                          ),
                        ),
                        WButton(
                          verticalPadding: 0,
                          horizontalPadding: 0,
                          color: AppColors.transparent,
                          text: "",
                          onTap: () => {},
                          child: Row(
                            children: [
                              const WText(
                                text: "Mark all as read",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: AppColors.c_2a,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              SvgPicture.asset(
                                "assets/svg/classroom/checked.svg",
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: AppColors.c_f0,
          borderRadius: BorderRadiusDirectional.vertical(
            top: Radius.circular(20),
          ),
        ),
        // child: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       SvgPicture.asset("assets/svg/icon/no_results.svg"),
        //       const SizedBox(height: 16),
        //       const WText(
        //         text: "No results",
        //         fontWeight: FontWeight.w500,
        //         color: AppColors.c_a1,
        //       ),
        //     ],
        //   ),
        // ),
        child: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height - 240),
            // padding: const EdgeInsets.all(20),
            color: AppColors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                9,
                (index) => Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  color: AppColors.c_f0,
                  child: Row(
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
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              Text(
                                "Ralph Edwards",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(width: 6),
                              WText(
                                text: "19d ago",
                                fontSize: 12,
                                color: AppColors.c_59,
                              ),
                            ]),
                            SizedBox(height: 2),
                            Text(
                              "💪 I want to work on building my self-confidence. Have you ever struggled with this? How did you develop a stronger sense of self-worth? 💪💖",
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.c_07,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        height: 10,
                        width: 10,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: AppColors.c_2a,
                            borderRadius: BorderRadius.circular(5)),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
