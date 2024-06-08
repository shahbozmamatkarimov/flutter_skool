import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_text.dart';
import 'package:skool/core/widgets/w_textfield.dart';

@RoutePage()
class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

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
            const Size.fromHeight(120.0), // Set your preferred height here
        child: AppBar(
          backgroundColor: AppColors.white,
          flexibleSpace: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const WText(
                      text: "Chat",
                      fontWeight: FontWeight.w600,
                      color: AppColors.c_07,
                      fontSize: 16,
                    ),
                    const SizedBox(height: 16),
                    WTextField(
                      controller: searchController,
                      hint: "Search all reports",
                      hintFontSize: 16,
                      fillColor: AppColors.transparent,
                      borderRadius: 8,
                      borderColor: AppColors.c_e0,
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
                        ),
                      ),
                    ),
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
                (index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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
