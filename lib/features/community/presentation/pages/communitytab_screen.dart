import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/features/community/presentation/pages/about.dart';
import 'package:skool/features/community/presentation/pages/calendar.dart';
import 'package:skool/features/community/presentation/pages/classroom.dart';
import 'package:skool/features/community/presentation/pages/community_screen.dart';
import 'package:skool/features/community/presentation/pages/leaderboards.dart';
import 'package:skool/features/community/presentation/pages/members.dart';

@RoutePage()
class CommunityTabScreen extends StatefulWidget {
  const CommunityTabScreen({super.key});

  @override
  _CommunityTabScreenState createState() => _CommunityTabScreenState();
}

class _CommunityTabScreenState extends State<CommunityTabScreen>
    with SingleTickerProviderStateMixin {
  late final TabController controllerForMainTabVarView =
      TabController(length: 6, vsync: this, initialIndex: 0);

  final List<String> communityTabs = [
    "Community",
    "Classroom",
    "Calendar",
    "Members",
    "Leaderboards",
    "About",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(64.0), // Set your preferred height here
        child: AppBar(
          titleSpacing: 0,
          backgroundColor: const Color(0xFFF0F5FA),
          centerTitle: true,
          title: Container(
            height: 64,
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CommunityDialog(),
                LanguageDialog(),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, top: 0),
            height: 40,
            child: TabBar(
              tabAlignment: TabAlignment.start,
              controller: controllerForMainTabVarView,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 2,
              dividerColor: const Color(0xFFBCDEFF),
              isScrollable: true,
              indicatorColor: const Color(0xFF2A85FF),
              labelColor: const Color(0xFF2A85FF),
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.w400,
              ),
              labelPadding: const EdgeInsets.only(right: 32),
              overlayColor:
                  MaterialStateProperty.all<Color>(Colors.transparent),
              labelStyle: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: AppColors.c_07,
              ),
              tabs: [
                for (String tab in communityTabs)
                  Tab(
                    child: Text(tab),
                  ),
                WButton(
                  text: "Settings",
                  color: AppColors.transparent,
                  verticalPadding: 0,
                  horizontalPadding: 0,
                  textColor: AppColors.c_07,
                  onTap: () => {context.router.pushNamed("/settings")},
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: controllerForMainTabVarView,
              children: [
                const CommunityScreen(),
                Classroom(),
                const Calendar(),
                Members(),
                const LeaderBoards(),
                About(),
                // const Settings(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
