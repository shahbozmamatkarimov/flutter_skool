import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skool/config/menu/menu_data.dart';
import 'package:skool/config/routes/route_path.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/resources/app_dimension.dart';
import 'package:skool/core/widgets/unfocus.dart';
import 'package:skool/core/widgets/w_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:skool/core/widgets/w_text.dart';

@RoutePage()
class ProfileMenuScreen extends StatefulWidget {
  const ProfileMenuScreen({super.key});

  @override
  State<ProfileMenuScreen> createState() => _ProfileMenuScreenState();
}

class _ProfileMenuScreenState extends State<ProfileMenuScreen>
    with AppDimension {
  final List<List<dynamic>> menu = [
    [ProfileMenu.profile, '/profile'],
    [ProfileMenu.account, '/account'],
    [ProfileMenu.password, '/password'],
    [ProfileMenu.notifications, '/notifications'],
    [ProfileMenu.chat, '/chat'],
    [ProfileMenu.communities, '/communities'],
    [ProfileMenu.referrals, '/referrals'],
    [ProfileMenu.payment_methods, '/payment_methods'],
    [ProfileMenu.payment_history, '/payment_history'],
  ];

  @override
  Widget build(BuildContext context) {
    return Unfocus(
      child: Container(
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
                title: const WText(
                  text: "Profile settings",
                  fontWeight: FontWeight.w600,
                  color: AppColors.c_07,
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
