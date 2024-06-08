import 'package:auto_route/auto_route.dart';
import 'package:skool/config/routes/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: ProfileRoute.page,
          path: '/profile',
        ),
        AutoRoute(
          page: AccountRoute.page,
          path: '/account',
        ),
        AutoRoute(
          page: PasswordRoute.page,
          path: '/password',
        ),
        AutoRoute(
          page: NotificationRoute.page,
          path: '/notifications',
        ),
         AutoRoute(
          page: ChatRoute.page,
          path: '/chat',
        ),
         AutoRoute(
          page: CommunityRoute.page,
          path: '/community',
        ),
        // profile menu
        CustomRoute(
          page: ProfileMenuRoute.page,
          path: '/profilemenu',
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
        ),
        AutoRoute(
          path: '/',
          page: MainRoute.page,
          children: [
            AutoRoute(
              path: 'communty',
              page: CommunityTabRoute.page,
              initial: true,
            ),
            AutoRoute(
              path: 'search',
              page: SearchRoute.page,
            ),
            AutoRoute(
              path: 'notifications',
              page: NotificationRoute.page,
            ),
            AutoRoute(
              path: 'chat',
              page: ChatRoute.page,
            ),
            AutoRoute(
              path: 'myprofile',
              page: MyProfileRoute.page,
            ),
          ],
        ),
        // AutoRoute(path: '/login', page: LoginRoute.page),
      ];
}
// import 'package:auto_route/auto_route.dart';
// import 'package:skool/config/routes/router.gr.dart';

// import 'route_path.dart';

// @AutoRouterConfig(
//   replaceInRouteName: 'Screen,Route',
// )
// class AppRouter extends $AppRouter {
//   @override
//   List<AutoRoute> get routes => [
//         AutoRoute(
//           page: MainRoute.page,
//           path: RoutePath.main,
//           children: [
//             AutoRoute(
//               page: RootSearch.page,
//               path: RoutePath.search,
//               initial: true,
//             ),
//           ],
//         ),
//         // AutoRoute(
//         //   page: MainRoute.page,
//         //   path: RoutePath.main,
//         //   children: [
//         //     AutoRoute(
//         //       page: RootSearch.page,
//         //       path: RoutePath.search,
//         //       initial: true,
//         //       children: [
//         //         AutoRoute(
//         //           page: RootSearch.page,
//         //           path: RoutePath.search,
//         //           initial: true,
//         //           // path: "",
//         //         ),
//         //       ],
//         //     ),
//         //   ],
//         // ),
//       ];
// }
