import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_text.dart';

@RoutePage()
class DiscoveryScreen extends StatefulWidget {
  const DiscoveryScreen({super.key});

  @override
  State<DiscoveryScreen> createState() => DiscoveryScreenState();
}

class DiscoveryScreenState extends State<DiscoveryScreen> {
  final List<List<String>> discovery_list = [
    ["Showing in discovery", "No"],
    ["Rank", "None"],
    ["Category", "None"],
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
            text: "Discovery",
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
                text: "Discovery",
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              const SizedBox(height: 24),
              const WText(
                text: "Get discovered by millions of active users.",
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: AppColors.c_07,
              ),
              const SizedBox(height: 24),
              for (List<String> discover in discovery_list)
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.c_bc),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin: const EdgeInsets.only(bottom: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: Row(
                    children: [
                      WText(
                        text: discover[0],
                        fontWeight: FontWeight.w500,
                        color: AppColors.c_a1,
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      WText(
                        text: discover[1],
                        fontWeight: FontWeight.w600,
                        color: AppColors.c_eb,
                      )
                    ],
                  ),
                ),
              const SizedBox(height: 24),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Showing in discovery",
                      style: TextStyle(
                        color: AppColors
                            .c_07, // Set the color for the rest of the text
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text:
                          " — Your group needs to meet a minimum threshold of members, posts, and activity to show in discovery. You also need a good group description, about page description, group cover image, and some photos/videos on your about page.\n\n",
                      style: TextStyle(
                        color: AppColors.c_07,
                        fontSize: 14,
                      ),
                    ),
                    TextSpan(
                      text: "Discovery rank",
                      style: TextStyle(
                        color: AppColors
                            .c_07, // Set the color for the rest of the text
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text:
                          " — Groups are ranked by engagement using an algorithm that looks at member growth, member activity, posts, comments, and likes. The more engaged your group is, the higher your rank.\n\n",
                      style: TextStyle(
                        color: AppColors.c_07,
                        fontSize: 14,
                      ),
                    ),
                    TextSpan(
                      text:
                          "If your category is wrong, please contact support.",
                      style: TextStyle(
                        color: AppColors.c_07,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
