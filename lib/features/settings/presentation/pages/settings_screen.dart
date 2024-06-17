import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skool/config/menu/menu_data.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/resources/app_dimension.dart';
import 'package:skool/core/widgets/w_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:skool/core/widgets/w_text.dart';

@RoutePage()
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsState();
}

class _SettingsState extends State<SettingsScreen> with AppDimension {
  final List<List<dynamic>> menu = [
    [CommunityMenu.dashboard, '/dashboard'],
    [CommunityMenu.payouts, '/payouts'],
    [CommunityMenu.invite, '/invite'],
    [CommunityMenu.general, '/general'],
    [CommunityMenu.subscriptions, '/subscriptions'],
    [CommunityMenu.categories, '/categories'],
    [CommunityMenu.plugins, '/plugins'],
    [CommunityMenu.metrics, '/metrics'],
    [CommunityMenu.gamification, '/gamification'],
    [CommunityMenu.discovery, '/discovery'],
    [CommunityMenu.links, '/links'],
    [CommunityMenu.billing, '/billing'],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.c_f0,
          appBar: PreferredSize(
            preferredSize:
                const Size.fromHeight(60), // Set your preferred height here
            child: AppBar(
              backgroundColor: AppColors.white,
              elevation: 0,
              centerTitle: false,
              leadingWidth: 54,
              leading: Row(
                children: [
                  const SizedBox(width: 14),
                  IconButton(
                    icon: SvgPicture.asset("assets/svg/icon/close.svg"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              title: Row(
                children: [
                  // Image.asset("assets/image/logo.png"),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
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
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.c_07,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "Group settings",
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.c_07,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  for (var i in menu)
                    WMenuItem(
                      menuData: i[0],
                      onTap: () => _openPage(i[1]),
                      scalingFactor: (
                        scalingFactorWidth(),
                        scalingFactorHeight()
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _openPage(String path) {
    // context.read<BottomNavBarBloc>().add(OpenPage(path: path));
    // context.router.pop();
    context.router.pushNamed(path);
  }

  @override
  Size get size => MediaQuery.sizeOf(context);
}
