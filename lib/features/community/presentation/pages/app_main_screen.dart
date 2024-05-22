import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:skool/config/routes/router.gr.dart';
import 'package:skool/features/main/presentation/pages/root/root_community.dart';

@RoutePage()
class AppMainScreen extends StatefulWidget {
  const AppMainScreen({super.key});

  @override
  State<AppMainScreen> createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      // list of your tab routes
      // routes used here must be declared as children
      // routes of /dashboard
      routes: const [
        RootSearchRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        // the passed child is technically our animated selected-tab page
        child: child,
      ),
      builder: (context, child) {
        // obtain the scoped TabsRouter controller using context
        final tabsRouter = AutoTabsRouter.of(context);
        // Here we're building our Scaffold inside of AutoTabsRouter
        // to access the tabsRouter controller provided in this context
        //
        // alternatively, you could use a global key
        return Scaffold(
          body: child,
          // bottomNavigationBar: BottomNavigationBar(
          //   currentIndex: tabsRouter.activeIndex,
          //   onTap: (index) {
          //     // here we switch between tabs
          //     tabsRouter.setActiveIndex(index);
          //   },
          //   items: [
          //     BottomNavigationBarItem(label: 'Users', ...),
          //     BottomNavigationBarItem(label: 'Posts', ...),
          //     BottomNavigationBarItem(label: 'Settings', ...),
          //   ],
          // ),
        );
      },
    );
  }
}
