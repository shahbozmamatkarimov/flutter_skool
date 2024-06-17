import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/config/routes/route_path.dart';
import 'package:skool/config/routes/router.gr.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<List<dynamic>> bottomNav = [
    [
      "assets/svg/bnavigation/home.svg",
      "assets/svg/bnavigation/home_active.svg",
      RoutePath.search,
      // const TabRouteData(path: RoutePath.search, routeInfo: RootSearch()),
    ],
    [
      "assets/svg/bnavigation/search.svg",
      "assets/svg/bnavigation/search_active.svg",
      // Search(),
    ],
    [
      "assets/svg/bnavigation/bell.svg",
      "assets/svg/bnavigation/bell_active.svg",
      // Search(),
    ],
    [
      "assets/svg/bnavigation/chat.svg",
      "assets/svg/bnavigation/chat_active.svg",
      // Search(),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        const CommunityTabRoute(),
        SearchRoute(),
        NotificationRoute(),
        ChatRoute(),
        MyProfileRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: Container(
            height: 56,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Color(0xFFF2F2F2), // Border color
                  width: 1.0, // Border width
                ),
              ),
              borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
            ),
            child: ClipPath(
              clipper: const ShapeBorderClipper(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                ),
              ),
              child: BottomNavigationBar(
                selectedLabelStyle: TextStyle(fontSize: 0, height: 0),
                items: <BottomNavigationBarItem>[
                  for (List<dynamic> item in bottomNav)
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        item[0],
                      ),
                      backgroundColor: Color(0xFFFFFFFF),
                      activeIcon: Transform.translate(
                        offset: Offset(0.0, 7.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: SvgPicture.asset(item[1]),
                            ),
                            Container(
                              width: 24,
                              height: 2.0,
                              decoration: BoxDecoration(
                                color: const Color(0xFF2A85FF), // Line color
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                          ],
                        ),
                      ),
                      label: '',
                    ),
                  BottomNavigationBarItem(
                    icon: const CircleAvatar(
                      radius: 12, // Set the radius of the circle
                      backgroundImage: NetworkImage(
                        'https://picsum.photos/250?image=9',
                      ),
                    ),
                    activeIcon: Transform.translate(
                      offset: const Offset(0.0, 7.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 12),
                            margin: const EdgeInsets.only(bottom: 0),
                            child: const CircleAvatar(
                              radius: 12, // Set the radius of the circle
                              backgroundImage: NetworkImage(
                                'https://picsum.photos/250?image=9',
                              ),
                            ),
                          ),
                          Container(
                            width: 24,
                            height: 2.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF2A85FF), // Line color
                              borderRadius: BorderRadius.circular(2),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0xFF2A85FF)
                                      .withOpacity(0.6), // Shadow color
                                  offset: const Offset(0, -1), // X 0 Y -1
                                  blurRadius: 7, // BLUR 7
                                  spreadRadius: 0, // Spread 0
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    label: '',
                  ),
                ],
                currentIndex: _selectedIndex,
                // onTap: _onItemTapped,
                onTap: (index) {
                  setState(() {
                    _selectedIndex = index;
                    tabsRouter.setActiveIndex(index);
                  });
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
