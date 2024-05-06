import 'package:flutter/material.dart';
import 'package:skool/features/community/presentation/pages/about.dart';
import 'package:skool/features/community/presentation/pages/calendar.dart';
import 'package:skool/features/community/presentation/pages/classroom.dart';
import 'package:skool/features/community/presentation/pages/community.dart';
import 'package:skool/features/community/presentation/pages/leaderboards.dart';
import 'package:skool/features/community/presentation/pages/members.dart';

class CommunityMainPage extends StatefulWidget {
  const CommunityMainPage({super.key});

  @override
  _CommunityMainPageState createState() => _CommunityMainPageState();
}

class _CommunityMainPageState extends State<CommunityMainPage>
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
      body: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 0),
            height: 40,
            child: TabBar(
              controller: controllerForMainTabVarView,
              indicatorSize: TabBarIndicatorSize
                  .label,
              indicatorWeight: 2,
              dividerColor: const Color(0xFFBCDEFF),
              isScrollable: true,
              indicatorColor: const Color(0xFF2A85FF),
              labelColor: const Color(0xFF2A85FF),
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.w400,
              ),
              labelPadding: const EdgeInsets.symmetric(horizontal: 16),
              labelStyle: const TextStyle(
                fontWeight: FontWeight.w700,
              ),
              tabs: [
                for (String tab in communityTabs)
                  Tab(
                    child: Text(tab),
                  ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: controllerForMainTabVarView,
              children: [
                CommunityPage(),
                Classroom(),
                Calendar(),
                Members(),
                LeaderBoards(),
                About(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
